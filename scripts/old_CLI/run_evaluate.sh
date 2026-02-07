# make the logs folder
mkdir logs_local

# run the sweep: you need to login to wandb to use this feature (option 1 or 2 when promped, not 3 (Don't visualize my results)
python3 ./cellvit/train_cell_classifier_head.py --config ./test_database/training_database/Example-Detection/train_configs/ViT256/fold_0_sweep.yaml --sweep

# find your best configuration
python3 ./scripts/find_best_hyperparameter.py /path/to/your/sweep --metric AUROC/Validation

# run evaluation on test set
python3 ./cellvit/training/evaluate/inference_cellvit_experiment_detection.py \
  --logdir /path/to/your/run_log \
  --dataset_path ./test_database/training_database/Example-Detection \
  --cellvit_path ./checkpoints/CellViT-256-x40-AMP.pth \
  --input_shape 256 256
# Be aware to give the correct input shape as used for training