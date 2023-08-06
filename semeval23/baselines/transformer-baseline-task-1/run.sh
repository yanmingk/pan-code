#!/bin/bash

#SBATCH --mail-user=y53kang@uwaterloo.ca
#SBATCH --job-name="spoiler"
#SBATCH --partition=gpu_a100
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=20:00:00
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
# pip install simpletransformers

# python transformer-baseline-task-1.py \
#     --input ../../data/test.jsonl \
#     --output ../../output/transformer1.jsonl
# #--model T5Model

# python example-usage.py

# python json_from_json.py

# python run_classification.py \
#     --model_name_or_path  microsoft/deberta-v2-xlarge-mnli \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --metric_name accuracy \
#     --text_column_name context \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_train \
#     --do_eval \
#     --evaluation_strategy epoch \
#     --max_seq_length 512 \
#     --per_device_train_batch_size 16 \
#     --gradient_accumulation_steps 4 \
#     --learning_rate 7e-6 \
#     --num_train_epochs 8 \
#     --output_dir ../../output/task1-deberta-v2-xlarge-mnli-2 \
#     --run_name task1-deberta-v2-xlarge-mnli


# python run_classification.py \
#     --model_name_or_path  ../../output/task1-deberta-v2-xlarge-mnli-2 \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --text_column_name "context" \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_predict \
#     --max_seq_length 512 \
#     --output_dir ../../results/task1-deberta-v2-xlarge-mnli-2 \
#     --run_name predict-task1-deberta-v2-xlarge-mnli


# python run_classification.py \
#     --model_name_or_path  microsoft/deberta-v2-xlarge-mnli \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --metric_name accuracy \
#     --text_column_name context \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_train \
#     --do_eval \
#     --evaluation_strategy epoch \
#     --max_seq_length 512 \
#     --per_device_train_batch_size 16 \
#     --gradient_accumulation_steps 2 \
#     --learning_rate 2e-6 \
#     --num_train_epochs 8 \
#     --output_dir ../../output/task1-deberta-v2-xlarge-mnli-3 \
#     --run_name task1-deberta-v2-xlarge-mnli

# python run_classification.py \
#     --model_name_or_path  ../../output/task1-deberta-v2-xlarge-mnli-3 \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --text_column_name "context" \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_predict \
#     --max_seq_length 512 \
#     --output_dir ../../results/task1-deberta-v2-xlarge-mnli-3 \
#     --run_name predict-task1-deberta-v2-xlarge-mnli-3







# python run_classification.py \
#     --model_name_or_path  microsoft/deberta-v2-xlarge-mnli \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --metric_name accuracy \
#     --text_column_name context \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_train \
#     --do_eval \
#     --evaluation_strategy epoch \
#     --max_seq_length 512 \
#     --per_device_train_batch_size 16 \
#     --gradient_accumulation_steps 4 \
#     --learning_rate 2e-6 \
#     --num_train_epochs 8 \
#     --output_dir ../../output/task1-deberta-v2-xlarge-mnli-4 \
#     --run_name task1-deberta-v2-xlarge-mnli-4 \
#     --save_strategy epoch
# python run_classification.py \
#     --model_name_or_path  ../../output/task1-deberta-v2-xlarge-mnli-4 \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --text_column_name "context" \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_predict \
#     --max_seq_length 512 \
#     --output_dir ../../results/task1-deberta-v2-xlarge-mnli-4 \
#     --run_name predict-task1-deberta-v2-xlarge-mnli-4




# python run_classification.py \
#     --model_name_or_path  microsoft/deberta-v2-xlarge-mnli \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --metric_name accuracy \
#     --text_column_name context \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_train \
#     --do_eval \
#     --evaluation_strategy epoch \
#     --max_seq_length 512 \
#     --per_device_train_batch_size 16 \
#     --gradient_accumulation_steps 1 \
#     --learning_rate 2e-6 \
#     --num_train_epochs 8 \
#     --output_dir ../../output/task1-deberta-v2-xlarge-mnli-5 \
#     --run_name task1-deberta-v2-xlarge-mnli-5 \
#     --save_strategy epoch
# python run_classification.py \
#     --model_name_or_path  ../../output/task1-deberta-v2-xlarge-mnli-5 \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --text_column_name "context" \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_predict \
#     --max_seq_length 512 \
#     --output_dir ../../results/task1-deberta-v2-xlarge-mnli-5 \
#     --run_name predict-task1-deberta-v2-xlarge-mnli-5



#trainval
# python run_classification.py \
#     --model_name_or_path  microsoft/deberta-v2-xlarge-mnli \
#     --train_file 1.json \
#     --validation_file 2.json \
#     --shuffle_train_dataset \
#     --metric_name accuracy \
#     --text_column_name context \
#     --text_column_delimiter "\n" \
#     --label_column_name tags \
#     --do_train \
#     --do_eval \
#     --evaluation_strategy epoch \
#     --max_seq_length 512 \
#     --per_device_train_batch_size 16 \
#     --gradient_accumulation_steps 4 \
#     --learning_rate 7e-6 \
#     --num_train_epochs 16 \
#     --output_dir ../../output/task1-deberta-v2-xlarge-mnli-2-final \
#     --run_name task1-deberta-v2-xlarge-mnli-2-final \
#     --save_strategy epoch
python run_classification.py \
    --model_name_or_path  ../../output/task1-deberta-v2-xlarge-mnli-2-final \
    --train_file 1.json \
    --validation_file 2.json \
    --shuffle_train_dataset \
    --text_column_name "context" \
    --text_column_delimiter "\n" \
    --label_column_name tags \
    --do_predict \
    --max_seq_length 512 \
    --output_dir ../../results/task1-deberta-v2-xlarge-mnli-2-final \
    --run_name predict-task1-deberta-v2-xlarge-mnli-2-final
