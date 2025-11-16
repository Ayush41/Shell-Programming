from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from GCP App Engine!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)

@app.route('/demo')
def demo():
    return "This is a demo web application running on GCP App Engine!"

@app.route('/add')
def add():
    a = 5
    b = 10
    return f"The sum of {a} and {b} is {a + b}"
