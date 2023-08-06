import pandas as pd
import json
    
def get_df(split):
    if split == "train":
        input_file = '../../data/train.jsonl'
    elif split == "test":
        input_file = '../../data/test.jsonl'
    elif split == "validation":
        input_file = '../../data/val.jsonl'
    elif split == "trainval":
        input_file = '../../data/trainval.jsonl'

    inp = [json.loads(i) for i in open(input_file, 'r')]

    if split == "test":
        data_list = []
        for idx, i in enumerate(inp):
            data_list.append(
                {
                    'id': idx,
                    'context': ' '.join(i['postText']) + i['targetTitle'] + ' - ' + (' '.join(i['targetParagraphs'])),
                    # 'answers': 'not available for predictions'
                    'tags': "phrase"
                }
            )
        return pd.DataFrame(data_list)
    else:
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
                    'context': ' '.join(i['postText']) + i['targetTitle'] + ' - ' + (' '.join(i['targetParagraphs'])),
                    'tags': i['tags'][0]
                }
            )
        return pd.DataFrame(data_list)
