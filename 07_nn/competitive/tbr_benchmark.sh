#!/bin/bash

cd /share/rcifdata/pmanek/fusion/hyperopt/07_nn/competitive

singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd_arb_arch.sh 4f_64
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd_arb_arch.sh 4f_128

