from main import app

@app.route('/')
def get():
    return 'Hello world!'