#!/bin/bash

CHECKPOINT=$HOME/ckp_tf

# TRAIN

python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_64k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/64k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_64k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_64k.gin --model_dir $CHECKPOINT/64k_moe


python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_8k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/8k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_8k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_8k.gin --model_dir $CHECKPOINT/8k_moe

python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_4k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/4k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_4k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='train'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_4k.gin --model_dir $CHECKPOINT/4k_moe


# EVAL

python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_64k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/64k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_64k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_64k.gin --model_dir $CHECKPOINT/64k_moe


python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_8k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/8k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_8k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_8k.gin --model_dir $CHECKPOINT/8k_moe

python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_4k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.modea'perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_base.gin --model_dir $CHECKPOINT/4k_transformer
 python mesh_tensorflow/transformer/main.py  --gin_file=mesh_tensorflow/transformer/gin/defaults_4k.gin --gin_file=mesh_tensorflow/transformer/gin/problems/t2t_lm1b_minxu.gin  --gin_param "run.mode='perplexity_eval'" --train_steps 34400 --gin_file mesh_tensorflow/transformer/gin/models/lm_moe_minxu_4k.gin --model_dir $CHECKPOINT/4k_moe
