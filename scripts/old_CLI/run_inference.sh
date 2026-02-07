CUDA_VISIBLE_DEVICES=0 \
python3 ./cellvit/detect_cells_disk.py \
  --model /home/hqvo2/Projects/MICCAI_2026/CellViT-plus-plus/checkpoints/SAM/CellViT-SAM-H-x40-AMP-001.pth \
  --geojson \
  --outdir_subdir test_runs/run1 \
  process_wsi \
  --wsi_path /data/wsis/slide1.svs \
  --patched_slide_path /data/patches/slide1