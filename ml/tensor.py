import pandas as pd
import tensorflow as tf
from tensorflow import keras
from sklearn.model_selection import train_test_split

# Load dataset
df = pd.read_csv('synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Build a logistic regression model with TensorFlow
def train_model(X_train, X_test, y_train, y_test):
    model = keras.Sequential([
        keras.layers.Dense(1, activation='sigmoid', input_shape=(X_train.shape[1],))
    ])
    
    model.compile(optimizer='sgd', loss='binary_crossentropy', metrics=['accuracy'])
    
    # Train the model
    model.fit(X_train, y_train, epochs=100, batch_size=10, verbose=0)
    
    # Evaluate the model
    loss, accuracy = model.evaluate(X_test, y_test, verbose=0)
    print(f"Accuracy: {accuracy:.4f}")

# Train and evaluate the model
train_model(X_train, X_test, y_train, y_test)
