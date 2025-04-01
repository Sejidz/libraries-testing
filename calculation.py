import os
import pandas as pd

def summary(data):
    """
    Calculates the cumulative difference in PACKAGE_ENERGY (J)
    using a while loop over the rows of the data.
    """
    sum_difference = 0
    i = 1
    while i < len(data):
        difference = data['PACKAGE_ENERGY (J)'].iloc[i] - data['PACKAGE_ENERGY (J)'].iloc[i-1]
        sum_difference += difference
        i += 1
    print('The total energy is:', sum_difference)
    return sum_difference

# Directory where the CSV files are located
dr = r"C:\Users\Bulut\Documents\GitHub\libraries-testing\ml\xgbost"

# List to store the results for each file
results = []

# Loop through built_in1.csv to built_in30.csv
for i in range(1, 31):
    file_name = f"xgbost{i}.csv"
    file_path = os.path.join(dr, file_name)
    
    if os.path.exists(file_path):
        data = pd.read_csv(file_path)
        
        # Compute energy difference using the summary function
        total_energy = summary(data)
        
        # Calculate spent time by summing the "Delta" column.
        # Assuming the Delta values are in milliseconds, convert the total to seconds.
        if 'Delta' in data.columns:
            spent_time = data['Delta'].sum()
            spent_time_seconds = spent_time / 1000  # convert ms to seconds
        else:
            print(f"'Delta' column not found in {file_name}.")
            spent_time_seconds = None
        
        # Append the results for this file as a new row.
        results.append({
            'Total Energy (J)': total_energy,
            'Spent Time (s)': spent_time_seconds
        })
    else:
        print(f"File {file_name} not found.")

# Create a DataFrame from the results list
results_df = pd.DataFrame(results)

# Save the combined results to built_in.csv in the specified directory
output_path = os.path.join(dr, "xgbost.csv")
results_df.to_csv(output_path, index=False)
print(f"Results saved to {output_path}")
