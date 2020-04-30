INPUT_SIZE=200
OUT_DIR=/share/rcifdata/pmanek/fusion/hyperopt/01_svm/competitive/best_${INPUT_SIZE}k_1

rm -rf ${OUT_DIR}
mkdir -p ${OUT_DIR}

tbr_search_benchmark /share/rcifdata/pmanek/fusion/data/run1 0 500 /share/rcifdata/pmanek/fusion/hyperopt/01_svm/multislice_run1_batch0_10_search/search.csv ${OUT_DIR} svm --feature-def=/share/rcifdata/pmanek/fusion/regression/features/all --n-jobs=1 --n-best-models=1 --save-plots --set-size=${INPUT_SIZE}000

