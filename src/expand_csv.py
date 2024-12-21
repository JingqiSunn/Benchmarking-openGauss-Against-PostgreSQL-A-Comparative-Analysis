import pandas as pd

# Read the original CSV file
input_file = '/tmp/trash/game_data_200_rows.csv'  # replace with your CSV file path
df = pd.read_csv(input_file)

# Calculate how many times the rows need to be repeated
num_repeats = 20000 // len(df)

# Repeat the rows and reset the index
expanded_df = pd.concat([df] * num_repeats, ignore_index=True)

# Save the expanded dataframe back to a new CSV
output_file = '/tmp/trash/game_data_20000_rows.csv'  # replace with your desired output file path
expanded_df.to_csv(output_file, index=False)

print(f"File expanded and saved to {output_file}")

