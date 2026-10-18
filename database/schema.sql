
CREATE TABLE IF NOT EXISTS quiz (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS question (
    id INTEGER PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    wrong1 TEXT NOT NULL,
    wrong2 TEXT NOT NULL,
    wrong3 TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS quiz_content (
    id INTEGER PRIMARY KEY,
    quiz_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES quiz(id),
    FOREIGN KEY (question_id) REFERENCES question(id),
    UNIQUE (quiz_id, question_id)
);
