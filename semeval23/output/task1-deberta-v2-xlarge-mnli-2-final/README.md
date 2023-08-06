---
license: mit
base_model: microsoft/deberta-v2-xlarge-mnli
tags:
- generated_from_trainer
metrics:
- accuracy
model-index:
- name: task1-deberta-v2-xlarge-mnli-2-final
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# task1-deberta-v2-xlarge-mnli-2-final

This model is a fine-tuned version of [microsoft/deberta-v2-xlarge-mnli](https://huggingface.co/microsoft/deberta-v2-xlarge-mnli) on the None dataset.
It achieves the following results on the evaluation set:
- Loss: 0.0011
- Accuracy: 1.0

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

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| No log        | 1.0   | 56   | 0.9019          | 0.595    |
| No log        | 1.99  | 112  | 0.5849          | 0.79     |
| No log        | 2.99  | 168  | 0.3992          | 0.86     |
| No log        | 4.0   | 225  | 0.2537          | 0.9      |
| No log        | 5.0   | 281  | 0.1354          | 0.96     |
| No log        | 5.99  | 337  | 0.1050          | 0.97     |
| No log        | 6.99  | 393  | 0.0468          | 0.9875   |
| No log        | 8.0   | 450  | 0.0403          | 0.99     |
| 0.4259        | 9.0   | 506  | 0.0152          | 0.995    |
| 0.4259        | 9.99  | 562  | 0.0043          | 1.0      |
| 0.4259        | 10.99 | 618  | 0.0013          | 1.0      |
| 0.4259        | 12.0  | 675  | 0.0010          | 1.0      |
| 0.4259        | 13.0  | 731  | 0.0009          | 1.0      |
| 0.4259        | 13.99 | 787  | 0.0025          | 0.9975   |
| 0.4259        | 14.99 | 843  | 0.0009          | 1.0      |
| 0.4259        | 15.93 | 896  | 0.0011          | 1.0      |


### Framework versions

- Transformers 4.32.0.dev0
- Pytorch 2.0.1+cu117
- Datasets 2.13.0
- Tokenizers 0.13.3
