#!/bin/bash

NN_ARCH=$1 ; shift

OUT_DIR=/share/rcifdata/pmanek/fusion/hyperopt/07_nn/competitive/200ks_5ke_${NN_ARCH}

rm -rf ${OUT_DIR}
mkdir -p ${OUT_DIR}

tbr_search_benchmark /share/rcifdata/pmanek/fusion/data/run1 0 500 /share/rcifdata/pmanek/fusion/hyperopt/07_nn/competitive/search_${NN_ARCH}.csv ${OUT_DIR} nn --feature-def=/share/rcifdata/pmanek/fusion/regression/features/all --n-jobs=1 --n-best-models=1 --save-plots --set-size=200000
