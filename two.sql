create database car_info
use car_info
create table cars(
car_id int primary key,
 car_name VARCHAR(100),
    company VARCHAR(100),
    price DECIMAL(10,2)
    );
    select * from cars
    
INSERT INTO cars
VALUES
(1,'Swift','Maruti',700000),
(2,'i20','Hyundai',900000),
(3,'Nexon','Tata',1200000);


CREATE TABLE owners (
    owner_id INT PRIMARY KEY,
    owner_name VARCHAR(100),
    car_id INT,
    FOREIGN KEY (car_id)
    REFERENCES cars(car_id)
);

INSERT INTO owners
VALUES
(101,'Madhan',1),
(102,'Kumar',2),
(103,'Arun',3);

SELECT
owners.owner_name,
cars.car_name,
cars.company,
cars.price

FROM owners

INNER JOIN cars

ON owners.car_id = cars.car_id;
SELECT
owners.owner_name,
cars.car_name

FROM owners

INNER JOIN cars

ON owners.car_id = cars.car_id

WHERE cars.car_name='Swift';

SELECT COUNT(*) AS total_cars
FROM cars;

SELECT * FROM cars WHERE price < 1000000 ;

