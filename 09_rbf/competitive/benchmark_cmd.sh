#!/bin/bash

INPUT_SIZE=$1 ; shift
OUT_DIR=/share/rcifdata/pmanek/fusion/hyperopt/09_rbf/competitive/best_${INPUT_SIZE}k

rm -rf ${OUT_DIR}
mkdir -p ${OUT_DIR}

tbr_search_benchmark /share/rcifdata/pmanek/fusion/data/run1 0 500 /share/rcifdata/pmanek/fusion/hyperopt/09_rbf/multislice_run1_batch0_10_search/search.csv ${OUT_DIR} rbf --feature-def=/share/rcifdata/pmanek/fusion/regression/features/all --n-jobs=1 --n-best-models=5 --save-plots --set-size=${INPUT_SIZE}000
