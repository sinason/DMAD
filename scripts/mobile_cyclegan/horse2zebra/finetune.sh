#!/usr/bin/env bash
python prune.py --dataroot ./database/horse2zebra \
  --model mobilecyclegan \
  --mask \
  --ngf 32 \
  --checkpoints_dir ./experiments/mobile_mask_horse2zebra \
  --name mobile_pruned_horse2zebra \
  --load_path ./experiments/mobile_mask_horse2zebra/model_best.pth \
  --gpu_ids 0 \
  --finetune \
  --lambda_attention_distill 100.0 \
  --lambda_discriminator_distill 0.0001 \
  --pretrain_path ../pretrain/horse2zebra_pretrain.pth