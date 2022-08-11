#!/usr/bin bash

WORK_DIR="/root/wlw/Dialogue_1125/pali-ai-interview/TEXTOIR-main/open_intent_discovery"

for dataset in 'banking' 'clinc'
do
    for known_cls_ratio in 0.75
    do
        for seed in 0 #1 2 3 4 5 6 7 8 9
        do 
            python ${WORK_DIR}/run.py \
            --dataset $dataset \
            --method 'DeepAligned' \
            --setting 'semi_supervised' \
            --known_cls_ratio $known_cls_ratio \
            --seed $seed \
            --backbone 'bert' \
            --config_file_name 'DeepAligned' \
            --gpu_id '0' \
            --train \
            --save_results \
            --results_file_name 'results_DeepAligned.csv' 
        done
    done
done
