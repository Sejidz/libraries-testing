import pandas as pd
import lightgbm as lgb
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load the dataset
df = pd.read_csv('ml/synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train the LightGBM model
def train_model(X_train, X_test, y_train, y_test):
    # Create the LightGBM dataset
    train_data = lgb.Dataset(X_train, label=y_train)
    test_data = lgb.Dataset(X_test, label=y_test, reference=train_data)
    
    # Define parameters for LightGBM (without max_depth to align with the original code)
    params = {
        'objective': 'binary',  # Binary classification
        'metric': 'binary_logloss',  # Log loss evaluation metric
        'learning_rate': 0.1,  # Learning rate
        'verbose': -1  # Suppress verbose output
    }
    
    # Train the model
    model = lgb.train(params, train_data, num_boost_round=100)
    
    # Predict on the test set
    y_pred = model.predict(X_test)
    
    # Convert continuous outputs to binary
    y_pred_binary = (y_pred >= 0.5).astype(int)
    
    # Evaluate accuracy
    accuracy = accuracy_score(y_test, y_pred_binary)
    print(f"Accuracy: {accuracy:.4f}")

# Train and evaluate the model
train_model(X_train, X_test, y_train, y_test)
