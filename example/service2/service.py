from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/thing")
def things():
    return jsonify(attribute="Test",
                   name="Thing",
                   id=1)

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=5002)
