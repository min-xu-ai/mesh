#!/bin/bash


PYTHONPATH=`pwd` python3 mesh_tensorflow/transformer/main.py \
     	--gin_file=mesh_tensorflow/transformer/gin/defaults.gin \
     	--gin_file=mesh_tensorflow/transformer/gin/layouts/8dp_gpu_minxu.gin \
     	--gin_file=mesh_tensorflow/transformer/gin/models/lm_moe_minxu.gin \
	--gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin \
	--model_dir=$HOME/local/moe_transformer_lm_checkpoint
