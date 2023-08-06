import csv

# Read the text data from the .txt file
# txt_file_path = "~/pan-code/semeval23/results/task1-deberta-v2-xlarge-mnli-2/predict_results.txt"
txt_file_path = "/work/y53kang/pan-code/semeval23/results/task1-deberta-v2-xlarge-mnli-2-final/predict_results.txt"
with open(txt_file_path, 'r') as file:
    text_data = file.read()

# Split the text data into lines
lines = text_data.split('\n')

# Separate the headers and content
headers = lines[0].split('\t')
data = [line.split('\t') for line in lines[1:]]

# Define the CSV file name
csv_file_name = "/work/y53kang/pan-code/semeval23/results/task1-deberta-v2-xlarge-mnli-2-final.csv"

# Write the data into a CSV file
with open(csv_file_name, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['id', 'spoilerType'])
    writer.writerows(data)

print(f"CSV file '{csv_file_name}' has been created.")
