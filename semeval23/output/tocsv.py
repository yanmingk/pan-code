import json
import csv


def json_to_csv(json_file, csv_file):
    with open(json_file, 'r') as file:
        # Read each line as a separate JSON object
        lines = file.readlines()

    with open(csv_file, 'w', newline='') as file:
        writer = csv.writer(file)

        # Write the header
        writer.writerow(['id', 'spoiler'])

        # Process each JSON object
        for line in lines:
            # Load the JSON object
            print(line)
            obj = json.loads(line)

            # Extract the values for each key
            row = [obj['id'], obj['spoiler']]

            # Write the row to the CSV file
            writer.writerow(row)

# Usage
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("input", type=str)
parser.add_argument("output", type=str)
args = parser.parse_args()


json_to_csv(args.input, args.output)