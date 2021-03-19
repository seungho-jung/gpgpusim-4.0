#!/bin/bash

for ((num=0; num < 16; num ++)); do
	echo "move"
	cd scatter_gather_aes_cuda_${num}
	echo "replace"
	sed -i 's|{ 0x0|{ 0x3|' benchmark.cu
	cd ..
	echo "end" ${num}
done
