import os
import pandas as pd

# Directory where the CSV files are located
file_path = r"C:\Users\Bulut\Documents\GitHub\libraries-testing\test.csv"

if os.path.exists(file_path):
    data = pd.read_csv(file_path)

    
    # Calculate spent time by summing the "Delta" column.
    # Assuming the Delta values are in milliseconds, convert the total to seconds.
    if 'Delta' in data.columns:
        spent_time = data['Delta'].sum()
        spent_time_seconds = spent_time / 1000  # convert ms to seconds


print(f"Spent time in seconds: {spent_time_seconds}")



