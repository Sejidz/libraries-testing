import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv('ml/synthetic_dataset.csv')
X = df.drop(columns=['target']).values
y = df['target'].values

# Split into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Function to train and evaluate
def train_model(X_train, X_test, y_train, y_test):
    model = tf.keras.Sequential([
        tf.keras.layers.Dense(1, activation='sigmoid')  # Logistic Regression
    ])
    
    model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])
    model.fit(X_train, y_train, epochs=10, batch_size=32, verbose=0)

    # Evaluate
    y_pred = (model.predict(X_test) > 0.5).astype("int32").flatten()
    accuracy = accuracy_score(y_test, y_pred)

    print(f"TensorFlow -> Accuracy: {accuracy:.4f}")

# Train
train_model(X_train, X_test, y_train, y_test)
