export INPUT_SIZE=$1 ; shift

OUT_DIR="/share/rcifdata/pmanek/fusion/hyperopt/02_gbt/competitive/best_${INPUT_SIZE}k"

rm -rf ${OUT_DIR}
mkdir -p ${OUT_DIR}

tbr_train gbt /share/rcifdata/pmanek/fusion/data/run1 0 ${INPUT_SIZE} 0.33 ${OUT_DIR}/test_performance 0 0 \
	--alpha=0.7855301572470489 \
	--ccp-alpha=0.0 \
	--criterion=mse \
	--learning-rate=0.25352726000745035 \
	--loss=huber \
	--min-impurity-decrease=0.0 \
	--min-weight-fraction-leaf=0.0 \
	--n-estimators=500 \
	--subsample=0.783569511822438


#	--out=/share/rcifdata/pmanek/fusion/hyperopt/02_gbt/competitive/best/model

#	--min-samples-leaf=15 \
#	--min-samples-split=9 \
