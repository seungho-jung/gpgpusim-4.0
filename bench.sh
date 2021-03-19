#!/bin/bash

for ((num=0; num < 16; num ++)); do
	echo "move"
	cd scatter_gather_aes_cuda_${num}
	echo "run"
	./testbase.sh
	echo "move"
	mv test_BASELINE_gmem.log test_BASELINE_gmem_${num}.log
	echo "cp"
	cp test_BASELINE_gmem_${num}.log ~/workspace/aes/run
	cd ..
	echo "end" ${num}
done
