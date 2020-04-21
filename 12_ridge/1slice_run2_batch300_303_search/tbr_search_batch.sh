#!/bin/bash
#SBATCH -p RCIF
#SBATCH -N 1
#SBATCH -c 40
#SBATCH --time=1-23:59:59
#SBATCH -o /share/rcifdata/pmanek/fusion/hyperopt/12_ridge/1slice_run2_batch300_303_search/search.log
#SBATCH -J 12_ridge/1slice_run2_batch300_303_search

export OMP_NUM_THREADS=$SLURM_JOB_CPUS_PER_NODE
export MAIN_DIR=/share/rcifdata/pmanek/fusion

srun -n1 ${MAIN_DIR}/hyperopt/search_template/tbr_search_run.sh 12_ridge/1slice_run2_batch300_303_search
