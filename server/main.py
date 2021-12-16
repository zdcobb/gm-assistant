from flask import Flask

app = Flask(__name__)

@app.route('/')
def get():
    print('HITTING THE ROUTE!')
    return 'Hello world!'