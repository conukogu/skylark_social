CREATE DATABASE homework;

CREATE TABLE topCars(
id INT AUTO_INCREMENT PRIMARY KEY,
make VARCHAR(100),
model VARCHAR(100),
year INT
);

USE homework;

SELECT * FROM topCars;

INSERT INTO topCars
(make, model, year)

VALUES
('Nissan',
'Leaf',
2017),

('Kia',
'Spectra',
2008),

('Honda',
'Accord',
2008)

Easy: Create a table with your top five favorite books with Title, Publish Date, and
Author First/Last Name Create a query to add in two new books Remove the oldest book Provide an additional query giving the sum of all books

CREATE TABLE topBooks(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
author_name VARCHAR(100),
publish_date INT
);

USE homework;

SELECT * FROM topBooks;

INSERT INTO topBooks
(title, author_name, publish_date)

VALUES
('The lightning thief',
'Rick Riordan',
2005),

('Omerta',
'Mario Puzzo',
1967),

('Naruto Vol.1',
'Mashima Kishimoto',
1999),

('Batman (Whole Run)',
'Scott Snyder',
2017),

('Gulag',
'Anne Applebaum',
2005)

// Add two more queries

INSERT INTO topBooks
(title, author_name, publish_date)

VALUES
('The Song of Achilles',
'Madeline Miller',
2011),

('American Gods',
'Neil Gaiman',
2001);

// Delete the oldest book
DELETE FROM topBooks WHERE id>0  ORDER BY publish_date ASC LIMIT 1;

//Sum the amount of queries
SELECT COUNT(title) FROM topBooks;





CREATE TABLE topFilms(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
rating VARCHAR(5),
release_date INT
);

USE homework;

SELECT * FROM topFilms;

INSERT INTO topFilms
(title, rating, release_date)

VALUES
('Dunkirk',
'PG-13',
2017),

('Flashpoint Paradox',
'PG-13',
2013),

('Just Mercy',
'PG-13',
2019),

('Downfall',
'R',
2004),

('Death of Stalin',
'R',
2017),

('Love Simon',
'PG-13',
2018),

('Captain America: The Winter Soldier',
'PG-13',
2014),

('Modern Times',
'G',
1936),

('Naruto: Ninja Clash in the Land of Snow',
'NR',
2004),

('Hidden Figures',
'PG',
2016);

// Selects queries where th title contains the letter 's'
SELECT * FROM topFilms WHERE title LIKE '%s%'








USE homework;

SELECT * FROM topFilms2;

CREATE TABLE topFilms2(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
rating VARCHAR(5),
release_date INT
);

USE homework;

SELECT * FROM topFilms2;

INSERT INTO topFilms2
(title, rating, release_date)

VALUES
('Dunkirk',
'PG-13',
2017),

('Flashpoint Paradox',
'PG-13',
2013),

('Just Mercy',
'PG-13',
2019),

('Downfall',
'R',
2004),

('Death of Stalin',
'R',
2017),

('Love Simon',
'PG-13',
2018),

('Captain America: The Winter Soldier',
'PG-13',
2014),

('Modern Times',
'G',
1936),

('Naruto: Ninja Clash in the Land of Snow',
'NR',
2004),

('Hidden Figures',
'PG',
2016);

//creates new columns for firstName and lastName

ALTER TABLE topFilms2
ADD director_firstName VARCHAR(100),
ADD director_lastName VARCHAR(100);

// Merge First and Last Name Columns to create a new fullName column
ALTER TABLE topFilms2 ADD COLUMN director_fullName VARCHAR(100);
UPDATE topFilms2 SET director_fullName = CONCAT(director_firstName, ' ', director_lastName) WHERE id>0;

// Deleate fullName column
ALTER TABLE topFilms2
DROP COLUMN director_fullName;


// Insert the first name values into the firstName column and ditto with last names

INSERT INTO topFilms2
(id, director_firstName, director_lastName)

VALUES
(1,
'A',
'B'),

(2,
'C',
'D'),

(3,
'E',
'F'),

(4,
'G',
'H'),

(5,
'I',
'J'),

(6,
'K',
'L'),

(7,
'M',
'N'),

(8,
'O',
'P'),

(9,
'Q',
'R'),

(10,
'S',
'T')

ON DUPLICATE KEY UPDATE director_firstName=VALUES(director_firstName), director_lastName=VALUES(director_lastName);