from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Hello, Flask!</h1><p>這是一個簡單的網頁測試。</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
