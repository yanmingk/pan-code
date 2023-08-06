---
license: mit
base_model: microsoft/deberta-v2-xlarge-mnli
tags:
- generated_from_trainer
metrics:
- accuracy
model-index:
- name: task1-deberta-v2-xlarge-mnli
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# task1-deberta-v2-xlarge-mnli

This model is a fine-tuned version of [microsoft/deberta-v2-xlarge-mnli](https://huggingface.co/microsoft/deberta-v2-xlarge-mnli) on the None dataset.
It achieves the following results on the evaluation set:
- Loss: 1.0696
- Accuracy: 0.405

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 2e-05
- train_batch_size: 8
- eval_batch_size: 8
- seed: 42
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: linear
- num_epochs: 4.0

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| No log        | 1.0   | 400  | 1.0898          | 0.405    |
| 1.0408        | 2.0   | 800  | 1.0732          | 0.385    |
| 1.0352        | 3.0   | 1200 | 1.0753          | 0.405    |
| 1.0439        | 4.0   | 1600 | 1.0696          | 0.405    |


### Framework versions

- Transformers 4.32.0.dev0
- Pytorch 2.0.1+cu117
- Datasets 2.13.0
- Tokenizers 0.13.3
