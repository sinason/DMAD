#!/usr/bin/env bash
python prune.py --dataroot ./database/horse2zebra \
  --model cyclegan \
  --mask \
  --checkpoints_dir ./experiments/mask_horse2zebra \
  --name pruned_horse2zebra \
  --load_path ./experiments/mask_horse2zebra/model_best.pth \
  --gpu_ids 0 \
  --finetune \
  --lambda_attention_distill 100.0 \
  --lambda_discriminator_distill 0.0001 \
  --pretrain_path ../pretrain/horse2zebra_pretrain.pth