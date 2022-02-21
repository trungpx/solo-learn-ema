python3 ../../../main_pretrain.py \
    --dataset imagenet100 \
    --backbone resnet18 \
    --data_dir ~/workspace/datasets/ \
    --train_dir imagenet-100/train \
    --val_dir imagenet-100/test \
    --max_epochs 200 \
    --precision 16 \
    --gpus 4,5,6,7 \
    --accelerator gpu \
    --strategy ddp \
    --num_workers 4 \
    --optimizer adam \
    --scheduler warmup_cosine \
    --warmup_epochs 2 \
    --lr 2e-3 \
    --warmup_start_lr 0 \
    --classifier_lr 3e-3 \
    --weight_decay 1e-6 \
    --batch_size 256 \
    --brightness 0.8 \
    --contrast 0.8 \
    --saturation 0.8 \
    --hue 0.2 \
    --gaussian_prob 0.2 \
    --min_scale 0.08 \
    --num_crops_per_aug 2 \
    --wandb \
    --save_checkpoint \
    --name wmse_res18 \
    --project Imagenet100-200ep \
    --entity kaistaim \
    --method wmse \
    --proj_output_dim 64 \
    --whitening_size 128 \
    --knn_eval \
    --lam 0.1 \
    --tau_decor 0.1 \
    --our_loss False \
