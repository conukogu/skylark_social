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
