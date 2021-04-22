INSERT INTO Books
VALUES
    (1, 'Auth1', "Book1", 1989),
    (2, 'Auth2', "Book2", 1734),
    (3, 'Auth2', "Book2", 1621),
    (4, 'Auth3', "Book3", 1621),
    (5, NULL, "Book4", 1592);

INSERT INTO Readers
VALUES
    (1, "Read1"),
    (2, "Read2"),
    (3, "Read3");

INSERT INTO Records
VALUES
    (1, 4, "18.02.2020", NULL),
    (1, 2, "18.02.2020", "24.02.2020"),
    (2, 5, "04.04.2020", NULL);
