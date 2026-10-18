
import os
from pathlib import Path

from dotenv import load_dotenv


PROJECT_ROOT = Path(__file__).resolve().parent.parent

load_dotenv(PROJECT_ROOT / ".env")


class Config:
    SECRET_KEY = os.getenv("SECRET_KEY")
    FLASK_DEBUG = os.getenv("FLASK_DEBUG", "false").lower() == "true"
    DATABASE_PATH = PROJECT_ROOT / os.getenv(
        "DATABASE_PATH",
        "database/quiz.sqlite",
    )
