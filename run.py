
from flask import Flask

from app.config import Config

app = Flask(__name__)
app.config.from_object(Config)

@app.route("/")
def index():
    return "Quiz App is running!"


if __name__ == "__main__":
    app.run(debug=app.config["FLASK_DEBUG"])
