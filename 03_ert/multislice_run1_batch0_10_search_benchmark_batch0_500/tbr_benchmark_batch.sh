#!/bin/bash
#SBATCH -p RCIF
#SBATCH -N 1
#SBATCH -c 40
#SBATCH --time=1-23:59:59
#SBATCH -o /share/rcifdata/pmanek/fusion/hyperopt/03_ert/multislice_run1_batch0_10_search_benchmark_batch0_500/benchmark.log
#SBATCH -J 03_ert/multislice_run1_batch0_10_search_benchmark_batch0_500

export OMP_NUM_THREADS=$SLURM_JOB_CPUS_PER_NODE
export MAIN_DIR=/share/rcifdata/pmanek/fusion

srun -n1 ${MAIN_DIR}/hyperopt/search_template/tbr_benchmark_run.sh 03_ert/multislice_run1_batch0_10_search_benchmark_batch0_500
