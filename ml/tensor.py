import pandas as pd
import tensorflow as tf
from tensorflow import keras
from sklearn.model_selection import train_test_split

# Load dataset
df = pd.read_csv('ml/synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

def train_model(X_train, X_test, y_train, y_test, epochs=100, batch_size=10, lr=0.01):
    # Build logistic regression model
    model = keras.Sequential([
        keras.layers.Dense(1, activation='sigmoid', input_shape=(X_train.shape[1],))
    ])
    
    optimizer = keras.optimizers.SGD(learning_rate=lr)
    model.compile(optimizer=optimizer, loss='binary_crossentropy', metrics=['accuracy'])
    
    # Train the model for 100 epochs
    model.fit(X_train, y_train, epochs=epochs, batch_size=batch_size, verbose=0)
    
    # Evaluate the model
    loss, accuracy = model.evaluate(X_test, y_test, verbose=0)
    print(f"Accuracy: {accuracy:.4f}")

train_model(X_train, X_test, y_train, y_test, epochs=100, batch_size=10, lr=0.01)
