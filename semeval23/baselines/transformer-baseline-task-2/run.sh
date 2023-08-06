#!/bin/bash

#SBATCH --mail-user=y53kang@uwaterloo.ca
#SBATCH --job-name="spoiler"
#SBATCH --partition=gpu_a100
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu=32G
#SBATCH --gres=gpu:a100_80G:1
#SBATCH --output=%x_%j.out

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
nvidia-smi
# nvcc -V
# python transformer-baseline-task-2.py \
#  --input  ../../data/test.jsonl \
#  --output ../../output/transformer2.jsonl \
#  --model deepset/roberta-base-squad2 
#--model T5Model

# pip install accelerate >= 0.12.0
# pip install datasets >= 1.8.0
# pip install torch >= 1.3.0
# pip install evaluate

# pip uninstall transformers
# pip install git+https://github.com/huggingface/transformers


# python run_qa_hf.py \
#   --model_name_or_path bert-large-uncased \
#   --train_file 1.csv \
#   --do_train \
#   --do_eval \
#   --per_device_train_batch_size 12 \
#   --learning_rate 3e-5 \
#   --num_train_epochs 8 \
#   --max_seq_length 512 \
#   --doc_stride 128 \
#   --output_dir ../../output/bert_large

# python example-usage.py



# python run_qa_hf.py \
#   --model_name_or_path deepset/deberta-v3-large-squad2 \
#   --train_file 1.csv \
#   --do_train \
#   --do_eval \
#   --learning_rate 7e-6 \
#   --num_train_epochs 10 \
#   --max_seq_length 512 \
#   --doc_stride 128 \
#   --pad_to_max_length false \
#   --per_device_train_batch_size 2 \
#   --gradient_accumulation_steps 32\
#   --output_dir ../../output/deberta-v3-large-squad2



# python run_qa_hf.py \
#   --model_name_or_path ../../output/bert_large/checkpoint-4000 \
#   --train_file 1.csv \
#   --do_predict \
#   --max_seq_length 512 \
#   --output_dir ../../results/bert_large



# python run_qa_hf.py \
#   --model_name_or_path ../../output/deberta-v3-large-squad2/checkpoint-1000 \
#   --train_file 1.csv \
#   --do_predict \
#   --max_seq_length 512 \
#   --output_dir ../../results/deberta-v3-large-squad2 

# python ../../results/tocsv.py \
#    ../../results/deberta-v3-large-squad2/predict_predictions.json \
#    ../../results/deberta-v3-large-squad2.csv

# trainval
# python run_qa_hf.py \
#    --model_name_or_path deepset/deberta-v3-large-squad2 \
#    --train_file 1.csv \
#    --do_train \
#    --do_eval \
#    --evaluation_strategy epoch \
#    --learning_rate 7e-6 \
#    --num_train_epochs 16 \
#    --max_seq_length 512 \
#    --doc_stride 128 \
#    --pad_to_max_length false \
#    --per_device_train_batch_size 16 \
#    --gradient_accumulation_steps 4\
#    --output_dir ../../output/deberta-v3-large-squad2-final \
#    --run_name deberta-v3-large-squad2-final \
#    --save_strategy epoch
python run_qa_hf.py \
  --model_name_or_path ../../output/deberta-v3-large-squad2 \
  --train_file 1.csv \
  --do_predict \
  --max_seq_length 512 \
  --output_dir ../../results/deberta-v3-large-squad2-finished