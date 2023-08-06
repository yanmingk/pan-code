import pandas as pd
import json
    
def get_df(split='test'):
    if split == "train":
        input_file = '../../data/train.jsonl'
    elif split == "test":
        input_file = '../../data/test.jsonl'
    elif split == "validation":
        input_file = '../../data/val.jsonl'

    inp = [json.loads(i) for i in open(input_file, 'r')]

    if split == "test":
        with open('../../data/test_v2.jsonl', "w") as f:
            data_list = []
            for idx, i in enumerate(inp):
                data_list.append(
                    {
                        'id': idx,
                        'title': i['targetTitle'],
                        'question': ' '.join(i['postText']),
                        'context': i['targetTitle'] + ' - ' + (' '.join(i['targetParagraphs'])),
                        # 'answers': 'not available for predictions'
                        'answers': {
                            'text': [''],
                            'answer_start': [0],
                        }
                    }
                )
            json.dump(data_list, f, indent=4)
              

    elif split == "validation":
        with open('../../data/val_v2.jsonl', "w") as f:
            data_list = []
            for idx, i in enumerate(inp):
                n_spoilers = len(i['spoiler'])
                paragraph_lens = [len(p) for p in i['targetParagraphs']]
                paragraph_indices = [pair[0][0] for pair in i['spoilerPositions']]
                paragraph_start_positions = [pair[0][1] for pair in i['spoilerPositions']]
                spoiler_start_positions = []
                for j in range(n_spoilers):
                    offset = 0
                    for pi in range(paragraph_indices[j]):
                        offset += paragraph_lens[pi] + 1
                    spoiler_start_positions.append(len(i['targetTitle']) + 3 + offset + paragraph_start_positions[j])
                data_list.append(
                    {
                        'id': idx,
                        'title': i['targetTitle'],
                        'question': ' '.join(i['postText']),
                        'context': i['targetTitle'] + ' - ' + (' '.join(i['targetParagraphs'])),
                        'answers': {
                            'text': i['spoiler'],
                            'answer_start': spoiler_start_positions,
                        }
                    }
                )
            json.dump(data_list, f, indent=4)

    else:
        with open('../../data/train_v2.jsonl', "w") as f:
            data_list = []
            for idx, i in enumerate(inp):
                n_spoilers = len(i['spoiler'])
                paragraph_lens = [len(p)+1 for p in i['targetParagraphs']]
                paragraph_indices = [pair[0][0] for pair in i['spoilerPositions']]
                paragraph_start_positions = [pair[0][1] for pair in i['spoilerPositions']]
                spoiler_start_positions = []
                for j in range(n_spoilers):
                    offset = 0
                    for pi in range(paragraph_indices[j]):
                        offset += paragraph_lens[pi]
                    spoiler_start_positions.append(len(i['targetTitle']) + offset + paragraph_start_positions[j])
                data_list.append(
                    {
                        'id': idx,
                        'title': i['targetTitle'],
                        'question': ' '.join(i['postText']),
                        'context': i['targetTitle'] + ' - ' + (' '.join(i['targetParagraphs'])),
                        'answers': {
                            'text': i['spoiler'],
                            'answer_start': spoiler_start_positions,
                        }
                    }
                )
            json.dump(data_list, f, indent=4)
