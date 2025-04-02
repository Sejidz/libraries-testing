import pandas as pd
import xgboost as xgb
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv('ml/synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

def train_model(X_train, X_test, y_train, y_test):
    # Convert to DMatrix for XGBoost
    dtrain = xgb.DMatrix(X_train, label=y_train)
    dtest = xgb.DMatrix(X_test, label=y_test)
    
    # Set parameters for pure logistic regression using linear booster
    params = {
        'objective': 'binary:logistic',
        'eval_metric': 'logloss',
        'booster': 'gblinear',  # Use linear booster
        'eta': 0.1
    }
    
    # Train for 100 iterations
    model = xgb.train(params, dtrain, num_boost_round=100)
    
    # Predict and evaluate
    y_pred = model.predict(dtest)
    y_pred_binary = (y_pred >= 0.5).astype(int)
    accuracy = accuracy_score(y_test, y_pred_binary)
    print(f"Accuracy: {accuracy:.4f}")

train_model(X_train, X_test, y_train, y_test)
