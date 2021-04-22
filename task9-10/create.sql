DROP TABLE IF EXISTS Books;

CREATE TABLE Books(
    id INTEGER NOT NULL PRIMARY KEY,
    author TEXT,
    title TEXT NOT NULL,
    publish_year INT
);

DROP TABLE IF EXISTS Readers;

CREATE TABLE Readers(
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

DROP TABLE IF EXISTS Records;

CREATE TABLE Records(
    reader_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    taking_date TEXT NOT NULL,
    returning_date TEXT
);
