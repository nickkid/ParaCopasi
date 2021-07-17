import os
import sys
# directory of ParaCopasi package
BASE_DIR = '~/projects/ParaCopasi/'
sys.path.append(os.path.expanduser(BASE_DIR))
from utility.path_manipulate import expandabspath as eap
from paracopasi_cmd import get_parser
import numpy as np
from paracopasi import paracopasi

if __name__ == '__main__':
    parser = get_parser()
    args = parser.parse_args()
    cpsfilepath = 'sGC_ballou_pe.cps'
    k1 = 1.55e8
    k2 = 0.01
    k3 = 3.3e5
    k4 = 0.001
    k5 = 0.0005
    factor1 = 100
    parameters = ['k1', 'k2', 'k3', 'k4', 'k5']
    bound = np.array([(k1 / factor1, k1 * factor1), (k2 / factor1, k2 * factor1),
                      (k3 / factor1, k3 * factor1), (k4 / factor1, k4 * factor1),
                      (k5 / factor1, k5 * factor1)])
    num_split = 10000
    initial = np.linspace(bound[:, 0], bound[:, 1], num_split)

    pc = paracopasi(workspace=args.workspace,
                    result_dir=args.result_dir,
                    max_workers=args.max_workers)
    """
    [
    (parameters[0], bound[0,0], bound[0,1], initial[j,0]),
    (parameters[1], bound[1,0], bound[1,1], initial[j,1]),
    (parameters[2], bound[2,0], bound[2,1], initial[j,2]),
    (parameters[3], bound[3,0], bound[3,1], initial[j,3]),
    (parameters[4], bound[4,0], bound[4,1], initial[j,4]),
    ] for j in range(100)
    """
    zipped_parameter = [[(parameters[i], bound[i, 0], bound[i, 1], initial[j,
                                                                           i])
                         for i in range(5)] for j in range(num_split)]
    pc.multiple_pe(cpsfilepath, zipped_parameter)
    # pc.single_pe(cpsfilepath,
                #  zipped_parameter[0],
                #  0,
                #  args.result_dir,
                #  '0')
