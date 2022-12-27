from flask import Flask, request, jsonify
import joblib
import pandas as pd

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello World!"

@app.route('/predict', methods=['POST'])
def predict():
     json_ = request.get_json()
     query_df = pd.json_normalize(json_)     
     query = query_df.to_numpy()
     prediction = rf.predict(query)
     return jsonify({'prediction':prediction.tolist()})

if __name__ == '__main__':
    rf = joblib.load('model.pkl')
    app.run(host = '0.0.0.0', port=8080)
