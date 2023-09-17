#!/bin/bash

param=$1
current_date=$(date +"%Y-%m-%d")

tasks=("bbbp" "clintox" "esol" "freesolv" "sider" "tox21")


idx=1

save_dir="./${param}_${current_date}_${idx}"

while [ -d "$save_dir" ];
do
    idx=$((idx + 1))
    save_dir="./${param}_${current_date}_${idx}"
    echo "$save_dir"
done
for index in "${!tasks[@]}"
do
    dataset_type="classification"
    if [ "${tasks[$index]}" = "esol" ] || [ "${tasks[$index]}" = "freesolv" ]; then
        dataset_type="regression"
    fi
    save_target_dir=$save_dir/${tasks[$index]}
    python train.py --data_path=./data/${tasks[$index]}.csv --dataset_type=$dataset_type --epochs=30 --num_folds=5 --gpu=0 --save_dir=$save_target_dir
done
