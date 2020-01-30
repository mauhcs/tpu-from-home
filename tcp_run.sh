#!/usr/bin/env bash


time GOOGLE_APPLICATION_CREDENTIALS=$1 \
    python main.py --distribution_strategy tpu \
    --tpu ="grpc://localhost:2000" \
    --model_dir "gs://dnn-bucket/my-tcp-run" \
    --data_dir "gs://dnn-bucket/mnist" \
    --train_epochs 10 \
    --download