#!/bin/bash

#SBATCH --account=publicgrp
#SBATCH --partition=low
#SBATCH --cpus-per-task=8
#SBATCH --time=01:00:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu:1

echo "----- sbatch execution -----"
python3 ping_gpu.py 
echo "SLURM_GPUS_ON_NODE=$SLURM_GPUS_ON_NODE"
echo "CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"
echo "--- end sbatch execution ---"
