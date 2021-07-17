import argparse
import os
import sys
import subprocess
DEFAULT_COPASISE = 'CopasiSE'
DEFAULT_RESULT_DIR = 'results/'
DEFAULT_MAX_WORKERS = 4


def get_parser():
    """
    task_type
    --copasise
    --workspace
    --result_dir
    --max_workers
    --task_batch
    --task_log
    --speedup_summary
    --max_workers
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('task_type',
                        type=str,
                        default='pe',
                        help='type of task.\n\
                        "pe"=Multiple Parameter Estimation. The --task_batch represents the .py file to describe the task.\n\
                        "batch"=Task Batch. A .csv batch file of task list must be specified by --task_batch with this option. See ./testbench/task_list.csv for example.'
                        )
    parser.add_argument('--copasise',
                        '-c',
                        type=str,
                        default=DEFAULT_COPASISE,
                        help='The path to the CopasiSE executable.')
    parser.add_argument('--workspace',
                        '-F',
                        type=str,
                        default=os.getcwd(),
                        help='Directory of the workspace. A new one \
                            will be created if not exist.')
    parser.add_argument('--result_dir',
                        '-d',
                        type=str,
                        default=DEFAULT_RESULT_DIR,
                        help='Diretory to which the results will be saved.')
    parser.add_argument(
        '--task_batch',
        type=str,
        default=None,
        help=
        'Path to the .csv task batch file. This option is only valid with task_type set to "batch".'
    )
    parser.add_argument('--task_log',
                        '-l',
                        type=str,
                        default=None,
                        help='The path to which the task log will be saved.')
    parser.add_argument(
        '--speedup_summary',
        '-s',
        type=str,
        default=None,
        help='The path to which the speedup summary will be saved.')
    parser.add_argument('--max_workers',
                        '-w',
                        type=int,
                        default=DEFAULT_MAX_WORKERS,
                        help='The number of max_workers.')
    return parser


if __name__ == '__main__':
    # mpiexec -n 1 -usize 9 python paracopasi.py ...
    parser = get_parser()
    args = parser.parse_args()
    usize = args.max_workers + 1
    mpi_prefix = ['mpiexec', '-n', '1', '-usize', str(usize), 'python']
    map_from_type = {
        'pe': mpi_prefix + [args.task_batch] + sys.argv[1:len(sys.argv)],
        'batch': mpi_prefix + [args.task_batch] + sys.argv[1:len(sys.argv)]
    }
    cmd = map_from_type[args.task_type]
    subprocess.run(cmd)
