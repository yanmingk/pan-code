#!/bin/bash

#SBATCH --mail-user=y53kang@uwaterloo.ca
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --job-name="spoiler"
#SBATCH --partition=gpu_a100
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=1:00:00
#SBATCH --mem-per-cpu=32G
#SBATCH --gres=gpu:a100_80G:1
#SBATCH --output=%x_%j.out


nvidia-smi
module load anaconda3
module load cuda

# conda create -n spoiler python=3.10
conda activate spoiler
# pip install transformers
# pip install torch torchvision torchaudio
# pip install pandas
# pip install datasets
# pip install accelerate
# pip install notebook
# pip install scikit-learn
# pip install nltk
# pip install bert-score

python test_input_for_task_2.py \
    --input_run transformer-baseline-task-2/outputs/predict_predictions.json \
    --ground_truth_spoilers transformer-baseline-task-2/validation.jsonl \
    --task 2