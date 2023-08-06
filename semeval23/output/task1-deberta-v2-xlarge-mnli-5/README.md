---
license: mit
base_model: microsoft/deberta-v2-xlarge-mnli
tags:
- generated_from_trainer
metrics:
- accuracy
model-index:
- name: task1-deberta-v2-xlarge-mnli-5
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# task1-deberta-v2-xlarge-mnli-5

This model is a fine-tuned version of [microsoft/deberta-v2-xlarge-mnli](https://huggingface.co/microsoft/deberta-v2-xlarge-mnli) on the None dataset.
It achieves the following results on the evaluation set:
- Loss: 0.8234
- Accuracy: 0.695

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 2e-06
- train_batch_size: 16
- eval_batch_size: 8
- seed: 42
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: linear
- num_epochs: 8.0

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| No log        | 1.0   | 200  | 1.0540          | 0.4      |
| No log        | 2.0   | 400  | 0.9342          | 0.57     |
| 0.979         | 3.0   | 600  | 0.8024          | 0.6775   |
| 0.979         | 4.0   | 800  | 0.7497          | 0.7075   |
| 0.6672        | 5.0   | 1000 | 0.7333          | 0.7275   |
| 0.6672        | 6.0   | 1200 | 0.7624          | 0.71     |
| 0.6672        | 7.0   | 1400 | 0.8029          | 0.695    |
| 0.4767        | 8.0   | 1600 | 0.8234          | 0.695    |


### Framework versions

- Transformers 4.32.0.dev0
- Pytorch 2.0.1+cu117
- Datasets 2.13.0
- Tokenizers 0.13.3
