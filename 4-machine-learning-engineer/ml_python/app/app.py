from flask import Flask, request, jsonify
import joblib
import pandas as pd
import os

# Load the model at import time so it's available for all requests
rf = joblib.load('model.pkl')
app = Flask(__name__)

# Load the trained model once when the application starts. Using an
# absolute path ensures the model can be located regardless of the
# working directory from which the app is launched (e.g. via ``flask``
# CLI or a WSGI server).
MODEL_PATH = os.path.join(os.path.dirname(__file__), "model.pkl")
rf = joblib.load(MODEL_PATH)

@app.route("/")
def home():
    return "Hello World!"

@app.route('/predict', methods=['POST'])
def predict():
     json_ = request.get_json()
     query_df = pd.json_normalize(json_)
     query = query_df.to_numpy()
     prediction = rf.predict(query)
     return jsonify({'prediction': prediction.tolist()})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
