from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_docker():
    return "Hello,AZIZ with my Python App! welcome to the best life"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
