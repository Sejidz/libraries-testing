import pandas as pd
import torch
import torch.nn as nn
import torch.optim as optim
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split dataset
X_train_np, X_test_np, y_train_np, y_test_np = train_test_split(X, y, test_size=0.2, random_state=42)

# Convert to PyTorch tensors
X_train = torch.tensor(X_train_np, dtype=torch.float32)
X_test = torch.tensor(X_test_np, dtype=torch.float32)
y_train = torch.tensor(y_train_np, dtype=torch.float32).view(-1, 1)
y_test = torch.tensor(y_test_np, dtype=torch.float32).view(-1, 1)

class LogisticRegressionModel(nn.Module):
    def __init__(self, input_dim):
        super(LogisticRegressionModel, self).__init__()
        self.linear = nn.Linear(input_dim, 1)
    
    def forward(self, x):
        return torch.sigmoid(self.linear(x))

def train_model(X_train, X_test, y_train, y_test, epochs=100, lr=0.01):
    model = LogisticRegressionModel(X_train.shape[1])
    criterion = nn.BCELoss()  # Binary cross-entropy loss
    optimizer = optim.SGD(model.parameters(), lr=lr)
    
    # Standard training loop for 100 epochs
    for epoch in range(epochs):
        model.train()
        optimizer.zero_grad()
        outputs = model(X_train)
        loss = criterion(outputs, y_train)
        loss.backward()
        optimizer.step()
    
    # Evaluate the model
    model.eval()
    with torch.no_grad():
        y_pred = model(X_test)
        y_pred_binary = (y_pred >= 0.5).float()
        accuracy = accuracy_score(y_test.numpy(), y_pred_binary.numpy())
    print(f"Accuracy: {accuracy:.4f}")

train_model(X_train, X_test, y_train, y_test, epochs=100, lr=0.01)
