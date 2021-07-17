import math
import os
import argparse
from path_manipulate import expandabspath as eap
from path_manipulate import makedirs_with_check as mwc
bash_head = '#!/bin/bash'
sbatch_option_head = '#SBATCH '
option_job_name = '--job-name'
option_nodes = '--nodes'
option_partition = '--partition'
option_error = '--error'
option_output = '--output'
cmd_swap_module = 'module swap mvapich2/2.3.1 mpich/3.3'
list_taskID = [0, 1, 2, 3]
list_process = [8, 16, 32, 64, 128, 256]
num_repeat_group = 12
list_repeats_per_process = []
PROCESS_PER_NODE = 12


def get_repeat_as_per_process(process):
    """
    process: list of int.
    """
    list_repeats_per_process = []
    for i in range(len(process)):
        list_repeats = [
            list_process[i] * 2**j for j in range(num_repeat_group)
        ]
        list_repeats_per_process.append(list_repeats)
    return list_repeats_per_process


def writeln(file, textline):
    file.write(textline + '\n')


def option_line(option, value):
    return sbatch_option_head + option + '=' + value


def getCmdline(head, option, value):
    return '{}{}={}'.format(head, option, value)


def get_option(default_option, argparse_option):
    if argparse_option is None:
        return default_option
    else:
        return argparse_option


def get_parser():
    parser = argparse.ArgumentParser()
    parser.add_argument('--partition',
                        '-p',
                        type=str,
                        default=None,
                        help='The partition to execute the job.')
    parser.add_argument('--workspace_parent_dir',
                        '-w',
                        type=str,
                        default=None,
                        help='Directory of the workspace. A new one \
                            will be created if not exist.')
    parser.add_argument('--batch_path',
                        '-b',
                        type=str,
                        default=None,
                        help='Directory of the workspace. A new one \
                            will be created if not exist.')

    return parser


def slurm_batch():
    parser = get_parser()
    args = parser.parse_args()
    default_partition = 'normal'
    default_workspace_parent_dir = '~/projects/slurm-copasi/homogeneity/'
    default_batch_path = '~/projects/slurm-copasi/homogeneity/batch_copasi.py'
    partition = get_option(default_partition, args.partition)
    workspace_parent_dir = get_option(default_workspace_parent_dir,
                                      args.workspace_parent_dir)
    copasi_batch_path = get_option(default_batch_path, args.batch_path)

    list_repeats_per_process = get_repeat_as_per_process(list_process)
    for taskID in range(4):
        for index_process in range(len(list_process)):
            num_process = list_process[index_process]
            for repeats in list_repeats_per_process[index_process]:
                workspace_dir = '{}task{}/{}_process/{}_repeats/'.format(
                    workspace_parent_dir, taskID, num_process, repeats)
                mwc(eap(workspace_dir))
                results_dir = '{}_process/{}_repeats/results/'.format(
                    num_process, repeats)
                job_name = 't{0}p{1}r{2}'.format(taskID, num_process, repeats)
                sbatch_filename = job_name + '_' + partition
                sbatch_path = workspace_dir + sbatch_filename
                # example cmd line:
                """
                mpiexec -n 1 -usize 257 python3
                 ~/projects/slurm-copasi/homogeneity/batch_copasi.py
                  ~/projects/slurm-copasi/homogeneity/task0/task0_256repeats.csv
                   --workspace_dir 256_process/256_repeats/
                    --result_dir 256_process/256_repeats/results 
                    --max_workers 256
                """
                cmd_mpiexec = ('mpiexec -n 1 -usize {3} python3 ' +
                               copasi_batch_path + ' ' + workspace_parent_dir +
                               'task{1}/task{1}_{2}repeats.csv' +
                               ' --workspace_dir ' + workspace_dir +
                               ' --result_dir ' + results_dir +
                               ' --max_workers {0}').format(
                                   num_process, taskID, repeats,
                                   num_process + 1)
                with open(eap(sbatch_path), 'w') as f:
                    #!/bin/bash
                    writeln(f, bash_head)
                    writeln(f, '')
                    #SBATCH --job-name=t0p8r8
                    writeln(
                        f,
                        getCmdline(sbatch_option_head, option_job_name,
                                   job_name))
                    #SBATCH --nodes=1
                    nodes = math.ceil((num_process + 1) / PROCESS_PER_NODE)
                    writeln(
                        f, getCmdline(sbatch_option_head, option_nodes, nodes))
                    #SBATCH --partition=64G
                    writeln(
                        f,
                        getCmdline(sbatch_option_head, option_partition,
                                   partition))
                    #SBATCH --error=t0p8r8.err%j
                    errorlog_filename = sbatch_filename + '.err%j'
                    errorlog_path = workspace_dir + errorlog_filename
                    writeln(
                        f,
                        getCmdline(sbatch_option_head, option_error,
                                   eap(errorlog_path)))
                    #SBATCH --output=t0p8r8.out%j
                    outputlog_filename = sbatch_filename + '.out%j'
                    outputlog_path = workspace_dir + outputlog_filename
                    writeln(
                        f,
                        getCmdline(sbatch_option_head, option_output,
                                   eap(outputlog_path)))
                    writeln(f, '')
                    # writeln(f, cmd_swap_module)
                    writeln(f, cmd_mpiexec)


if __name__ == '__main__':
    slurm_batch()
