#!/bin/bash


PYTHONPATH=`pwd` python3 mesh_tensorflow/bert/run_pretraining.py   \
     	--bert_config_file=mesh_tensorflow/bert/config/moe.json    \
	--input_train_files="/private/home/m1n/local/bert_data_processed/pretraining_data/*"    \
	--input_eval_files="/private/home/m1n/local/bert_data_processed/eval/*"  \
	--output_dir=$HOME/local/moe_bert_checkpoint
