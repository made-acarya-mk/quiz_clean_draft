
from app.database.connection import get_connection


def seed_database():
    connection = get_connection()

    try:
        seed_file = "database/seed.sql"

        with open(seed_file, encoding="utf-8") as file:
            sql_script = file.read()

        connection.executescript(sql_script)
        connection.commit()
    finally:
        connection.close()
        
if __name__ == "__main__":
    seed_database()
    print("Seed completed successfully!")
