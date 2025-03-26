import pandas as pd
import xgboost as xgb
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load the dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train the XGBoost model
def train_model(X_train, X_test, y_train, y_test):
    # Convert the dataset to DMatrix, which is the internal data format for XGBoost
    dtrain = xgb.DMatrix(X_train, label=y_train)
    dtest = xgb.DMatrix(X_test, label=y_test)
    
    # Define parameters for XGBoost
    params = {
        'objective': 'binary:logistic',  # Binary classification
        'eval_metric': 'logloss',        # Log loss evaluation metric
        'eta': 0.1,                      # Learning rate
        'max_depth': 3                   # Max depth of the tree
    }
    
    # Train the model
    model = xgb.train(params, dtrain, num_boost_round=100)
    
    # Predict on the test set
    y_pred = model.predict(dtest)
    
    # Convert continuous outputs to binary
    y_pred_binary = (y_pred >= 0.5).astype(int)
    
    # Evaluate accuracy
    accuracy = accuracy_score(y_test, y_pred_binary)
    print(f"Accuracy: {accuracy:.4f}")

# Train and evaluate the model
train_model(X_train, X_test, y_train, y_test)
