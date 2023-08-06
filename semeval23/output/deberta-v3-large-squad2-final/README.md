---
license: cc-by-4.0
base_model: deepset/deberta-v3-large-squad2
tags:
- generated_from_trainer
model-index:
- name: deberta-v3-large-squad2-final
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# deberta-v3-large-squad2-final

This model is a fine-tuned version of [deepset/deberta-v3-large-squad2](https://huggingface.co/deepset/deberta-v3-large-squad2) on the None dataset.

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 7e-06
- train_batch_size: 16
- eval_batch_size: 8
- seed: 42
- gradient_accumulation_steps: 4
- total_train_batch_size: 64
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: linear
- num_epochs: 16.0

### Training results



### Framework versions

- Transformers 4.32.0.dev0
- Pytorch 2.0.1+cu117
- Datasets 2.13.0
- Tokenizers 0.13.3
