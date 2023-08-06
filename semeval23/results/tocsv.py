import json
import csv

# def escape_special_characters(text):
#     return text.replace('\n', '\\n').replace(',', '\\,')

def json_to_csv(json_file, csv_file):
    with open(json_file, 'r') as file:
        data = json.load(file)

    with open(csv_file, 'w', newline='') as file:
        writer = csv.writer(file)
        # writer = csv.writer(file, quoting=csv.QUOTE_NONE, escapechar='\\')
        # writer = csv.writer(file, quoting=csv.QUOTE_NONE)

        # Write the header
        writer.writerow(['id', 'spoiler'])

        # Write the data rows
        for key, value in data.items():
            writer.writerow([key, value])

    # output_lines = [f"{key}, {value}" for key, value in data.items()]
    # # Write the data to the plain text file
    # with open(csv_file, 'w', encoding='utf-8') as outfile:
    #     outfile.write('\n'.join(output_lines))
# Usage
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("input", type=str)
parser.add_argument("output", type=str)
args = parser.parse_args()


json_to_csv(args.input, args.output)