#!/bin/bash
#SBATCH -p RCIF
#SBATCH -N 1
#SBATCH -c 40
#SBATCH --time=1-23:59:59
#SBATCH -o /share/rcifdata/pmanek/fusion/hyperopt/06_knn/1slice_run2_batch200_203_search/search.log
#SBATCH -J 06_knn/1slice_run2_batch200_203_search

export OMP_NUM_THREADS=$SLURM_JOB_CPUS_PER_NODE
export MAIN_DIR=/share/rcifdata/pmanek/fusion

srun -n1 ${MAIN_DIR}/hyperopt/search_template/tbr_search_run.sh 06_knn/1slice_run2_batch200_203_search
