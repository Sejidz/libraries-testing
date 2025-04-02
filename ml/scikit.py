import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

def train_model(X_train, X_test, y_train, y_test):
    # Use pure logistic regression with no penalty and 100 iterations
    model = LogisticRegression(max_iter=100, penalty='l2', C=1e10, solver='lbfgs')
    model.fit(X_train, y_train)
    
    # Evaluate
    y_pred = model.predict(X_test)
    accuracy = accuracy_score(y_test, y_pred)
    print(f"Accuracy: {accuracy:.4f}")

train_model(X_train, X_test, y_train, y_test)
