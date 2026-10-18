
-- 1. Quizzes
INSERT INTO quiz (id, name)
VALUES
    (1, 'Python Basics'),
    (2, 'Web Development'),
    (3, 'Database Fundamentals');

-- 2. Questions: Python Basics
INSERT INTO question (
    id, question, answer, wrong1, wrong2, wrong3
)
VALUES
    (1, 'Which keyword defines a function in Python?',
        'def', 'func', 'function', 'define'),
    (2, 'Which data type stores True or False?',
        'bool', 'str', 'list', 'dict'),
    (3, 'Which symbol starts a comment in Python?',
        '#', '//', '/*', '--'),
    (4, 'Which method adds an item to a list?',
        'append()', 'add()', 'insertItem()', 'push()');

-- 3. Questions: Web Development
INSERT INTO question (
    id, question, answer, wrong1, wrong2, wrong3
)
VALUES
    (5, 'What does HTML stand for?',
        'HyperText Markup Language',
        'HighText Machine Language',
        'Hyper Transfer Main Link',
        'Home Tool Markup Language'),
    (6, 'Which language styles web pages?',
        'CSS', 'SQL', 'Python', 'Bash'),
    (7, 'Which language runs natively in web browsers?',
        'JavaScript', 'Java', 'C', 'SQL'),
    (8, 'Which HTML tag creates a hyperlink?',
        '<a>', '<link>', '<href>', '<url>');

-- 4. Questions: Database Fundamentals
INSERT INTO question (
    id, question, answer, wrong1, wrong2, wrong3
)
VALUES
    (9, 'What does SQL stand for?',
        'Structured Query Language',
        'Simple Question Language',
        'System Quick Logic',
        'Sequential Query Link'),
    (10, 'Which SQL command retrieves data?',
        'SELECT', 'INSERT', 'UPDATE', 'DELETE'),
    (11, 'What uniquely identifies a table row?',
        'Primary key', 'Foreign key', 'View', 'Index'),
    (12, 'Which SQL command adds a new row?',
        'INSERT', 'SELECT', 'UPDATE', 'DROP');

-- 5. Link each quiz to its four questions
INSERT INTO quiz_content (id, quiz_id, question_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 1, 4),

    (5, 2, 5),
    (6, 2, 6),
    (7, 2, 7),
    (8, 2, 8),

    (9, 3, 9),
    (10, 3, 10),
    (11, 3, 11),
    (12, 3, 12);
