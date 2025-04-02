import pandas as pd
import lightgbm as lgb
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

def train_model(X_train, X_test, y_train, y_test):
    # Create LightGBM dataset
    train_data = lgb.Dataset(X_train, label=y_train)
    
    # Set parameters for pure logistic regression with linear booster
    params = {
        'objective': 'binary',
        'metric': 'binary_logloss',
        'boosting_type': 'gblinear',  # Use linear booster
        'learning_rate': 0.1,
        'verbose': -1
    }
    
    # Train for 100 iterations
    model = lgb.train(params, train_data, num_boost_round=100)
    
    # Predict and evaluate
    y_pred = model.predict(X_test)
    y_pred_binary = (y_pred >= 0.5).astype(int)
    accuracy = accuracy_score(y_test, y_pred_binary)
    print(f"Accuracy: {accuracy:.4f}")

train_model(X_train, X_test, y_train, y_test)
