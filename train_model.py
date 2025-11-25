import pandas as pd
from sklearn.tree import DecisionTreeClassifier
import joblib

# Step 1: Load training data from fertilizer_data.csv
data = pd.read_csv('fertilizer_data.csv')

# Step 2: Encode input features (Soil_Type and Region)
X = pd.get_dummies(data[['Soil_Type', 'Region']])  # One-hot encoding
y = data['Fertilizer']  # Labels

# Step 3: Train a Decision Tree Classifier
model = DecisionTreeClassifier()
model.fit(X, y)

# Step 4: Save the model to fertilizer_model.pkl
joblib.dump(model, 'fertilizer_model.pkl')
print("✅ fertilizer_model.pkl created successfully!")
