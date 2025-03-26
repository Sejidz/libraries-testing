import pandas as pd
import torch
import torch.nn as nn
import torch.optim as optim
from sklearn.model_selection import train_test_split

# Load dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Convert data to PyTorch tensors
X_train = torch.tensor(X_train, dtype=torch.float32)
X_test = torch.tensor(X_test, dtype=torch.float32)
y_train = torch.tensor(y_train, dtype=torch.float32).view(-1, 1)
y_test = torch.tensor(y_test, dtype=torch.float32).view(-1, 1)

# Define the logistic regression model
class LogisticRegressionModel(nn.Module):
    def __init__(self, input_dim):
        super(LogisticRegressionModel, self).__init__()
        self.linear = nn.Linear(input_dim, 1)
    
    def forward(self, x):
        return torch.sigmoid(self.linear(x))

# Train and evaluate the model
def train_model(X_train, X_test, y_train, y_test):
    model = LogisticRegressionModel(X_train.shape[1])
    criterion = nn.BCELoss()  # Binary Cross-Entropy Loss
    optimizer = optim.SGD(model.parameters(), lr=0.01)
    
    # Train the model (single step, no epochs)
    optimizer.zero_grad()
    outputs = model(X_train)
    loss = criterion(outputs, y_train)
    loss.backward()
    optimizer.step()
    
    # Evaluate the model
    with torch.no_grad():
        y_pred = model(X_test)
        y_pred = (y_pred >= 0.5).float()
        accuracy = (y_pred.eq(y_test).sum().item()) / y_test.shape[0]
    
    print(f"Accuracy: {accuracy:.4f}")

# Train and evaluate
train_model(X_train, X_test, y_train, y_test)
