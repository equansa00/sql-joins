DROP DATABASE IF EXISTS joins_exercise;

CREATE DATABASE joins_exercise;

\c joins_exercise

CREATE TABLE owners (
    id SERIAL PRIMARY KEY, 
    first_name TEXT, 
    last_name TEXT
);

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY, 
    make TEXT, 
    model TEXT, 
    year INTEGER, 
    price REAL, 
    owner_id INTEGER REFERENCES owners (id)
);

INSERT INTO owners (first_name, last_name) VALUES 
('Bob', 'Hope'),
('Jane', 'Smith'),
('Melody', 'Jones'),
('Sarah', 'Palmer'),
('Alex', 'Miller'),
('Shana', 'Smith'),
('Maya', 'Malarkin');

INSERT INTO vehicles (make, model, year, price, owner_id) VALUES 
('Toyota', 'Corolla', 2002, 2999.99, 1),
('Honda', 'Civic', 2012, 12999.99, 1),
('Nissan', 'Altima', 2016, 23999.99, 2),
('Subaru', 'Legacy', 2006, 5999.99, 2),
('Ford', 'F150', 2012, 2599.99, 3),
('GMC', 'Yukon', 2016, 12999.99, 3),
('GMC', 'Yukon', 2014, 22999.99, 4),
('Toyota', 'Avalon', 2009, 12999.99, 4),
('Toyota', 'Camry', 2013, 12999.99, 4),
('Honda', 'Civic', 2001, 7999.99, 5),
('Nissan', 'Altima', 1999, 1899.99, 6),
('Lexus', 'ES350', 1998, 1599.99, 6),
('BMW', '300', 2012, 22999.99, 6),
('BMW', '700', 2015, 52999.99, 6);
