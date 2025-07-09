-- ------------------------------
-- Insert data into Company table
-- ------------------------------
INSERT INTO Company (CName) VALUES
('Tech Innovators'),
('Green Solutions'),
('Blue Horizon'),
('Starline Enterprises'),
('NextGen Software'),
('Urban Dynamics'),
('Quantum Corp'),
('Alpha Systems'),
('Bright Future Ltd'),
('Nova Technologies'),
('Silver Oak Partners'),
('Everest Holdings'),
('Sunrise Ventures'),
('Pinnacle Group'),
('Global Reach Inc');

-- ------------------------------
-- Insert data into Passenger table
-- ------------------------------
INSERT INTO Passenger (FirstName, LastName, PassportNumber) VALUES
('Olena', 'Shevchenko', 'AA1234567'),
('Ivan', 'Kovalenko', 'BB2345678'),
('Maria', 'Petrenko', 'CC3456789'),
('Andriy', 'Bondarenko', 'DD4567890'),
('Kateryna', 'Melnyk', 'EE5678901'),
('Dmytro', 'Tkachenko', 'FF6789012'),
('Anna', 'Boyko', 'GG7890123'),
('Oleh', 'Moroz', 'HH8901234'),
('Svitlana', 'Khmara', 'II9012345'),
('Viktor', 'Lysenko', 'JJ0123456'),
('Natalia', 'Kravchenko', 'KK1234568'),
('Mykola', 'Marchenko', 'LL2345679'),
('Iryna', 'Zaitseva', 'MM3456790'),
('Serhiy', 'Romanenko', 'NN4567901'),
('Olha', 'Kucher', 'OO5679012'),
('Volodymyr', 'Dovzhenko', 'PP6789123'),
('Tetiana', 'Sokolova', 'QQ7891234'),
('Yaroslav', 'Stepanenko', 'RR8901345'),
('Larysa', 'Panchenko', 'SS9012456'),
('Bohdan', 'Chernenko', 'TT0123567'),
('Inna', 'Savchenko', 'UU1234678'),
('Oleksandr', 'Volkov', 'VV2345789'),
('Vira', 'Kovtun', 'WW3456890'),
('Roman', 'Hrynko', 'XX4567902'),
('Nadiya', 'Fedorova', 'YY5678013'),
('Petro', 'Melnychenko', 'ZZ6789124'),
('Sergiy', 'Tarasenko', 'AB7891235'),
('Galina', 'Mykhailova', 'BC8901346'),
('Denys', 'Kozak', 'CD9012457'),
('Anastasiya', 'Bondar', 'DE0123568');

-- ------------------------------
-- Insert data into Trip table
-- ------------------------------
INSERT INTO Trip (CompanyFK, Plane, Town_from, Town_to, Time_out, Time_in) VALUES
(1, 'Boeing 737', 'Kyiv', 'Lviv', '2025-07-01 08:00:00', '2025-07-01 09:30:00'),
(2, 'Airbus A320', 'Lviv', 'Warsaw', '2025-07-02 10:00:00', '2025-07-02 11:50:00'),
(3, 'Boeing 777', 'Odessa', 'Istanbul', '2025-07-03 14:00:00', '2025-07-03 16:00:00'),
(4, 'Embraer 190', 'Kharkiv', 'Berlin', '2025-07-04 09:30:00', '2025-07-04 12:15:00'),
(5, 'Boeing 747', 'Dnipro', 'Rome', '2025-07-05 15:00:00', '2025-07-05 17:45:00'),
(6, 'Airbus A350', 'Kyiv', 'Paris', '2025-07-06 07:45:00', '2025-07-06 10:30:00'),
(7, 'Boeing 737', 'Lviv', 'Prague', '2025-07-07 12:00:00', '2025-07-07 13:55:00'),
(8, 'Bombardier Q400', 'Odesa', 'Moscow', '2025-07-08 11:15:00', '2025-07-08 13:00:00'),
(9, 'Airbus A320', 'Kharkiv', 'Budapest', '2025-07-09 16:30:00', '2025-07-09 18:10:00'),
(10, 'Boeing 787', 'Dnipro', 'Amsterdam', '2025-07-10 13:00:00', '2025-07-10 15:40:00'),
(11, 'Embraer 170', 'Kyiv', 'Vienna', '2025-07-11 09:00:00', '2025-07-11 11:20:00'),
(12, 'Boeing 737', 'Lviv', 'Minsk', '2025-07-12 17:00:00', '2025-07-12 18:30:00'),
(13, 'Airbus A320', 'Odesa', 'Tel Aviv', '2025-07-13 08:30:00', '2025-07-13 11:00:00'),
(14, 'Boeing 777', 'Kharkiv', 'London', '2025-07-14 19:00:00', '2025-07-14 22:00:00'),
(15, 'Bombardier Q400', 'Dnipro', 'Barcelona', '2025-07-15 06:45:00', '2025-07-15 09:15:00');

-- ------------------------------
-- Insert data into Pass_in_trip table
-- ------------------------------
INSERT INTO Pass_in_trip (TripFK, PassengerFK, Place) VALUES
(1, 1, '12A'),
(1, 2, '12B'),
(1, 3, '14C'),
(2, 4, '10D'),
(2, 5, '10E'),
(2, 6, '11A'),
(3, 7, '15B'),
(3, 8, '15C'),
(4, 9, '8A'),
(4, 10, '8B'),
(5, 11, '9C'),
(5, 12, '9D'),
(6, 13, '14A'),
(6, 14, '14B'),
(7, 15, '20C'),
(7, 16, '20D'),
(8, 17, '22A'),
(8, 18, '22B'),
(9, 19, '18C'),
(9, 20, '18D'),
(10, 21, '7A'),
(10, 22, '7B'),
(11, 23, '6C'),
(11, 24, '6D'),
(12, 25, '5A'),
(12, 26, '5B'),
(13, 27, '3C'),
(13, 28, '3D'),
(14, 29, '1A'),
(14, 30, '1B');
