#!/bin/bash

cd /share/rcifdata/pmanek/fusion/hyperopt/09_rbf/competitive

singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 20
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 40
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 80
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 100
singularity exec -B /share:/share /share/rcifdata/pmanek/fusion/images/tbr_reg26.sif ./benchmark_cmd.sh 200

