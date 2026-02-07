python3 ./cellvit/detect_cells.py \
  --model /home/hqvo2/Projects/MICCAI_2026/CellViT-plus-plus/checkpoints/SAM/CellViT-SAM-H-x40-AMP-001.pth \
  --outdir ./test-results/x_40/minimal \
  process_wsi \
  --wsi_path ./test_database/x40_svs/JP2K-33003-2.svs