---
-- Example Schema
--

DROP ALL OBJECTS;

CREATE SEQUENCE hibernate_sequence START WITH 1000;

CREATE TABLE AUTHOR (
    id                  int not null IDENTITY,
    first_name          varchar(100) not null,
    last_name           varchar(100),
    primary key (id)
);

CREATE TABLE BOOK (
    id                      int not null IDENTITY,
    title                   varchar(100) not null,
    summary                 varchar(255),
    author_id               int,
    price                   decimal(20, 2) not null,

    constraint book_fk_1 foreign key (author_id) references AUTHOR,
    primary key (id)
);

INSERT INTO AUTHOR  VALUES (1,  'John01', 'Doe01');
INSERT INTO AUTHOR  VALUES (2,  'John02', 'Doe02');
INSERT INTO AUTHOR  VALUES (3,  'John03', 'Doe03');
INSERT INTO AUTHOR  VALUES (4,  'John04', 'Doe04');
INSERT INTO AUTHOR  VALUES (5,  'John05', 'Doe05');
INSERT INTO AUTHOR  VALUES (6,  'John06', 'Doe06');
INSERT INTO AUTHOR  VALUES (7,  'John07', 'Doe07');
INSERT INTO AUTHOR  VALUES (8,  'John08', 'Doe08');
INSERT INTO AUTHOR  VALUES (9,  'John09', 'Doe09');
INSERT INTO AUTHOR  VALUES (10, 'John10', 'Doe10');
INSERT INTO AUTHOR  VALUES (11, 'John11', 'Doe11');
INSERT INTO AUTHOR  VALUES (12, 'John12', 'Doe12');
INSERT INTO AUTHOR  VALUES (13, 'John13', 'Doe13');
INSERT INTO AUTHOR  VALUES (14, 'John14', 'Doe14');
INSERT INTO AUTHOR  VALUES (15, 'John15', 'Doe15');
INSERT INTO AUTHOR  VALUES (16, 'John16', 'Doe16');
INSERT INTO AUTHOR  VALUES (17, 'John17', 'Doe17');
INSERT INTO AUTHOR  VALUES (18, 'John18', 'Doe18');
INSERT INTO AUTHOR  VALUES (19, 'John19', 'Doe19');
INSERT INTO AUTHOR  VALUES (20, 'John20', 'Doe20');
INSERT INTO AUTHOR  VALUES (21, 'John21', 'Doe21');
INSERT INTO AUTHOR  VALUES (22, 'John22', 'Doe22');

INSERT INTO BOOK VALUES (1, 'Learn Angular', 'Angular for beginners', 1, 12.34);
INSERT INTO BOOK VALUES (2, 'Learn Angular2', 'Angular2 for beginners', 2, 32.00);
