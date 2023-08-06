---
license: mit
base_model: microsoft/deberta-v2-xlarge-mnli
tags:
- generated_from_trainer
metrics:
- accuracy
model-index:
- name: task1-deberta-v2-xlarge-mnli-2
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# task1-deberta-v2-xlarge-mnli-2

This model is a fine-tuned version of [microsoft/deberta-v2-xlarge-mnli](https://huggingface.co/microsoft/deberta-v2-xlarge-mnli) on the None dataset.
It achieves the following results on the evaluation set:
- Loss: 0.8910
- Accuracy: 0.7375

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
- num_epochs: 8.0

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| No log        | 1.0   | 50   | 1.0232          | 0.49     |
| No log        | 2.0   | 100  | 0.8057          | 0.69     |
| No log        | 3.0   | 150  | 0.7922          | 0.675    |
| No log        | 4.0   | 200  | 0.7005          | 0.735    |
| No log        | 5.0   | 250  | 0.7585          | 0.745    |
| No log        | 6.0   | 300  | 0.8350          | 0.735    |
| No log        | 7.0   | 350  | 0.8582          | 0.725    |
| No log        | 8.0   | 400  | 0.8910          | 0.7375   |


### Framework versions

- Transformers 4.32.0.dev0
- Pytorch 2.0.1+cu117
- Datasets 2.13.0
- Tokenizers 0.13.3
