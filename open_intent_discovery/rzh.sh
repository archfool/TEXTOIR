#!/usr/bin bash

python run.py \
  --train \
  --gpu_id 0 \
  --setting 'semi_supervised' \
  --seed 0 \
  --data_dir D:\project\intent_discovery\TEXTOIR-main\data \
  --dataset data_simple \
  --backbone bert_CDAC \
  --method CDACPlus \
  --config_file_name CDACPlus_unfreeze \
  --known_cls_ratio 0.75 \
  --labeled_ratio 0.1 \
  --log_file_path D:\data\log\test.log \
  --results_file_name D:\data\intent_discovery\result.csv \
  --model_dir D:\data\intent_discovery \
  --cluster_num_factor 1.0

python run.py \
  --train \
  --gpu_id 0 \
  --setting 'semi_supervised' \
  --seed 0 \
  --data_dir D:\project\intent_discovery\TEXTOIR-main\data \
  --dataset data_simple \
  --backbone bert \
  --method DeepAligned \
  --config_file_name DeepAligned_unfreeze \
  --known_cls_ratio 0.75 \
  --labeled_ratio 0.1 \
  --log_file_path D:\data\log\test.log \
  --results_file_name D:\data\intent_discovery\result.csv \
  --model_dir D:\data\intent_discovery \
  --cluster_num_factor 1.0