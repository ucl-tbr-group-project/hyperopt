#!/bin/bash

cd /share/rcifdata/pmanek/fusion/hyperopt/03_ert/competitive

singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 80
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 100
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 200

