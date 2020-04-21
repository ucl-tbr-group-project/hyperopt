#!/bin/bash

set -e

# usage: generate.sh <run> <batch_low> <batch_high> <mode: 1slice|multislice> <models...>

RUN_NO=$1 ; shift
BATCH_LOW=$1 ; shift
BATCH_HIGH=$1 ; shift
MODE=$1 ; shift
MODELS="$@"

case "${MODE}" in
1slice)
  IN_FILE="search_cmd.sh.in"
  ;;
multislice)
  IN_FILE="search_cmd_multislice.sh.in"
  ;;
esac

echo "Mode    : ${MODE}"
echo "Run     : ${RUN_NO}"
echo "Batches : ${BATCH_LOW}-${BATCH_HIGH}"
echo "Models  : ${MODELS}"
echo "Command : ${IN_FILE}"

BASE_DIR="/share/rcifdata/pmanek/fusion"
REG_DIR="${BASE_DIR}/regression"

DATA_IN="${BASE_DIR}/data/run${RUN_NO}"

for MODEL in "${MODELS}"; do
	BATCH_TAG="${MODEL}/${MODE}_run${RUN_NO}_batch${BATCH_LOW}_${BATCH_HIGH}_search"
	OUT_DIR="${BASE_DIR}/hyperopt/${BATCH_TAG}"

	rm -rf "${OUT_DIR}"
	mkdir -p "${OUT_DIR}"

	sed \
	  -e 's|%%DATA_IN%%|'${DATA_IN}'|g' \
	  -e 's|%%BATCH_LOW%%|'${BATCH_LOW}'|g' \
	  -e 's|%%BATCH_HIGH%%|'${BATCH_HIGH}'|g' \
	  -e 's|%%OUT_DIR%%|'${OUT_DIR}'|g' \
	  -e 's|%%REG_DIR%%|'${REG_DIR}'|g' \
	  "${MODEL}/${IN_FILE}" \
	  >"${OUT_DIR}/search_cmd.sh"

	sed \
	  -e 's|%%OUT_DIR%%|'${OUT_DIR}'|g' \
	  -e 's|%%BATCH_TAG%%|'${BATCH_TAG}'|g' \
	  "tbr_search_batch.sh.in" \
	  >"${OUT_DIR}/tbr_search_batch.sh"

	chmod +x "${OUT_DIR}/tbr_search_batch.sh"
done

