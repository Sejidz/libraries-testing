import pandas as pd
from sklearn.datasets import make_classification

# Generate synthetic dataset
X, y = make_classification(n_samples=10000, n_features=20, 
                           n_informative=15, n_redundant=5, 
                           random_state=42)

# Convert to DataFrame
df = pd.DataFrame(X, columns=[f'feature_{i}' for i in range(X.shape[1])])
df['target'] = y  # Add target column

# Save to CSV
df.to_csv('synthetic_dataset.csv', index=False)

print("Dataset saved as 'synthetic_dataset.csv'")