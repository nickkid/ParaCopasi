import sbatch_prepare as sp
import path_manipulate as pm
import os
import time
import traceback
from pandas import DataFrame as df
from pandas import Series
from mpi4py.futures import MPIPoolExecutor
res_columns = ['obj','std',
                'k1.value','k1.grad','k1.std',
                'k2.value','k2.grad','k2.std',
                'k3.value','k3.grad','k3.std',
                'k4.value','k4.grad','k4.std',
                'k5.value','k5.grad','k5.std']
result_filename = 'sGC_parameter_estimation_homo.csv'
#generate result file path
def get_result_file_path(p,r,o):
    prefix = '~/projects/slurm-copasi/homogeneity/task3/'
    file = '{0}_process/{1}_repeats/results/\
two_step_sGC_activation.cps.dat{2}'.format(p,r,o)
    return prefix + file


def skip_lines(f, num):
    for i in range(num):
        next(f)


#extract fitting results
def get_entry(filepath):
    start = time.perf_counter()
    with open(filepath, 'r') as f:
        try:
            entry = Series(dtype=float)
            while next(f) != 'Parameter Estimation Result:\n':
                continue
            next(f)
            entry['obj'] = next(f).split(':',1)[1].strip()
            entry['std'] = next(f).split(':',1)[1].strip()
            skip_lines(f, 5)
            for i in range(1,6):
                current_line = next(f).split(':',1)[1].strip().split()
                entry['k{}.value'.format(i)] = current_line[0]
                entry['k{}.grad'.format(i)] = current_line[1]
                entry['k{}.std'.format(i)] = current_line[2]
        except Exception as e:
            traceback.print_exc()
            print('Error processing file {}'.format(filepath))
            end = time.perf_counter()
            return entry, end-start
    end = time.perf_counter()
    return entry, end-start
    
#store fitting results
if __name__ == '__main__':
    sp.num_repeat_group = 8
    repeats = sp.get_repeat_as_per_process(sp.list_process)
    res = df(columns=res_columns)
    total_cpu_time = 0
    start = time.perf_counter()
    with MPIPoolExecutor(max_workers=220) as executor:
        for index,p in enumerate(sp.list_process):
            for r in repeats[index]:
                for o in range(r):
                    filepath = pm.expandabspath(get_result_file_path(p,r,o))
                    if os.path.exists(filepath):
                        future = executor.submit(get_entry, filepath)
                        entry, temp_time = future.result()
                        res = res.append(entry, ignore_index=True)
                        total_cpu_time += temp_time
    end = time.perf_counter()
    wall_clock_time = end - start
    res.to_csv(result_filename, index=False)
    print('max_worker={}\ncpu time={}\n\
wall clock time={}\speedup={}'.format(220,
total_cpu_time,wall_clock_time,total_cpu_time/wall_clock_time))
