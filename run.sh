#!/bin/sh

for i in ${1}; do
    cd ${i}
    for j in submit_*.sh; do
        bsub < ${j}
    done
    cd ../..
done
