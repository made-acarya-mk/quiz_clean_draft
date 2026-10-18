
import sqlite3
from pathlib import Path

from app.config import Config


def init_database():
    schema_path = Path(__file__).with_name("schema.sql")

    connection = sqlite3.connect(Config.DATABASE_PATH)

    try:
        connection.executescript(
            schema_path.read_text(encoding="utf-8")
        )
        connection.commit()
    finally:
        connection.close()


if __name__ == "__main__":
    init_database()
    print("Database initialized successfully!")
