/*Inlämningsuppgift 2: Avancerad SQL & Databashantering
Kurs: Databaser
Av: Sandra Bäckström*/

-- Skapa databasen
CREATE DATABASE Bookshop_adv;
USE Bookshop_adv;

-- Skapa tabell för böcker
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(100) UNIQUE NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Title VARCHAR(255) UNIQUE NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    Stock INT NOT NULL
);

-- Skapa tabell för kunder
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(50) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- Skapa tabell för beställningar
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Skapa tabell för orderrader
CREATE TABLE Orderrows (
    OrderrowsID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    BookID INT NOT NULL,
    ISBN VARCHAR(100) NOT NULL,
    Amount INT NOT NULL CHECK (Amount > 0),
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Lägg till data för böcker
INSERT INTO Books (ISBN, Title, Author, Price, Stock) VALUES
('978-0-13-110362-7', 'The C Programming Language', 'Brian Kernighan & Dennis Ritchie', 45.99, 10),  
('978-1-491-95479-3', 'Learning SQL', 'Alan Beaulieu', 39.99, 15),  
('978-0-321-87758-1', 'Database System Concepts', 'Silberschatz, Korth & Sudarshan', 59.99, 8),  
('978-0-13-235088-4', 'Clean Code', 'Robert C. Martin', 42.99, 12),  
('978-0-262-03384-8', 'Introduction to the Theory of Computation', 'Michael Sipser', 64.99, 5),  
('978-0-596-52068-7', 'JavaScript: The Good Parts', 'Douglas Crockford', 34.99, 20),  
('978-1-59327-584-6', 'Automate the Boring Stuff with Python', 'Al Sweigart', 29.99, 18),  
('978-0-07-352332-3', 'Computer Networking: A Top-Down Approach', 'Kurose & Ross', 69.99, 7),  
('978-0-321-71463-3', 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma et al.', 54.99, 9),  
('978-1-59327-599-0', 'Python Crash Course', 'Eric Matthes', 37.99, 14),  
('978-0-321-83435-5', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell & Peter Norvig', 79.99, 6),  
('978-1-449-35936-2', 'You Don’t Know JS: Scope & Closures', 'Kyle Simpson', 24.99, 25),  
('978-0-13-597444-5', 'Structure and Interpretation of Computer Programs', 'Harold Abelson & Gerald Jay Sussman', 49.99, 10);

-- Lägg till data för kunder
INSERT INTO Customer (Name, Email, Phone, Address) VALUES
('Alice Johnson', 'alice@example.com', '123-456-7890', '123 Main St, Cityville'),  
('Bob Smith', 'bob@example.com', '987-654-3210', '456 Oak St, Townsville'),  
('Charlie Brown', 'charlie@example.com', '555-123-4567', '789 Pine St, Villagetown'),  
('David Wilson', 'david@example.com', '111-222-3333', '101 Maple St, Lakeside'),  
('Emma Davis', 'emma@example.com', '444-555-6666', '202 Birch St, Hillsborough'),  
('Frank Miller', 'frank@example.com', '777-888-9999', '303 Cedar St, Riverside'),  
('Grace Lee', 'grace@example.com', '222-333-4444', '404 Spruce St, Meadowtown'),  
('Henry Clark', 'henry@example.com', '666-777-8888', '505 Willow St, Brookfield'),  
('Ivy Martinez', 'ivy@example.com', '999-000-1111', '606 Aspen St, Greenfield'),  
('Jack White', 'jack@example.com', '123-321-4567', '707 Redwood St, Sunnyside'),  
('Karen Scott', 'karen@example.com', '789-456-1230', '808 Cherry St, Northville'),  
('Leo Adams', 'leo@example.com', '234-567-8901', '909 Dogwood St, Southtown'),  
('Mia Harris', 'mia@example.com', '345-678-9012', '1010 Magnolia St, Eastwood'),  
('Noah Carter', 'noah@example.com', '456-789-0123', '1111 Fir St, Westlake'),  
('Olivia Baker', 'olivia@example.com', '567-890-1234', '1212 Cypress St, Midtown'),  
('Paul Rogers', 'paul@example.com', '678-901-2345', '1313 Hickory St, Fairview'),  
('Quinn Foster', 'quinn@example.com', '789-012-3456', '1414 Sycamore St, Springfield'),  
('Rachel Evans', 'rachel@example.com', '890-123-4567', '1515 Sequoia St, Riverdale'),  
('Sam Turner', 'sam@example.com', '901-234-5678', '1616 Olive St, Pinewood'),  
('Tina Walker', 'tina@example.com', '012-345-6789', '1717 Poplar St, Maplewood'),  
('Umar Patel', 'umar@example.com', '123-555-6789', '1818 Chestnut St, Willowbrook'),  
('Victoria Bennett', 'victoria@example.com', '234-666-7890', '1919 Elm St, Lakeshore'),  
('William Parker', 'william@example.com', '345-777-8901', '2020 Bay St, Brookside');

-- Lägg till data för beställningar
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-03-10', 85.98),  
(2, '2024-03-11', 39.99),  
(3, '2024-03-12', 59.99),  
(4, '2024-03-13', 97.98),  
(5, '2024-03-14', 64.99),  
(6, '2024-03-15', 129.97),  
(7, '2024-03-16', 74.98),  
(8, '2024-03-17', 149.97),  
(9, '2024-03-18', 94.98),  
(10, '2024-03-19', 89.98),
(3, '2025-03-12', 29.99);

-- Lägg till data för orderrader
INSERT INTO Orderrows (OrderID, BookID, ISBN, Amount, Price) VALUES
(1, 1, '978-0-13-110362-7', 1, 45.99),  
(1, 2, '978-1-491-95479-3', 1, 39.99),  
(2, 2, '978-1-491-95479-3', 1, 39.99),  
(3, 3, '978-0-321-87758-1', 1, 59.99),  
(4, 1, '978-0-13-110362-7', 1, 45.99),  
(4, 4, '978-0-13-235088-4', 1, 51.99),  
(5, 5, '978-0-262-03384-8', 1, 64.99),  
(6, 6, '978-0-596-52068-7', 2, 34.99),  
(6, 7, '978-1-59327-584-6', 1, 59.99),  
(7, 8, '978-0-07-352332-3', 1, 69.99),  
(7, 9, '978-0-321-71463-3', 1, 4.99),  
(8, 10, '978-1-59327-599-0', 2, 74.99),  
(8, 11, '978-0-321-83435-5', 1, 59.99),  
(9, 12, '978-1-449-35936-2', 1, 24.99),  
(9, 13, '978-0-13-597444-5', 1, 69.99),  
(10, 1, '978-0-13-110362-7', 1, 45.99),  
(10, 3, '978-0-321-87758-1', 1, 43.99);

SELECT * From Books;

-- Filtrera kunder baserat på namn och epost
SELECT * FROM Customer WHERE Name = 'Bob Smith';
SELECT * FROM Customer WHERE email LIKE '%@example.com';

-- Sortera böcker i ordning från högsta pris till lägsta pris
SELECT * FROM Books ORDER BY Price DESC;

-- Uppdatera en kunds email
UPDATE Customer SET Email = 'newbob@example.com' WHERE CustomerID = 2;

-- Använd Transaction för att säkerställa att ändringar kan ångras
START TRANSACTION;
UPDATE Customer SET Email = 'newcharlie@example.com' WHERE CustomerID =3;
ROLLBACK; 

SELECT * FROM Customer WHERE Name = 'Charlie Brown';

-- Skapa in en Inner Join för att hitta kunder som har lagt en beställning
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM Customer c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Skapa en Left Join för att visa alla kunder, inklusive de som inte har en beställning
SELECT c.CustomerID, c.Name, o.OrderID
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Skapa en Group By för att räkna antalet ordrar per kund
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

-- Skapa en Having för att visa kunder som har mer än två ordrar
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING TotalOrders > 2;

-- Skapa index för kunders email för snabbare sökning
CREATE INDEX idx_email ON Customer(Email);

-- Skapa en Constraint som säkerställer att priset på böcker alltid är över 0
ALTER TABLE Books ADD CONSTRAINT check_price CHECK (Price > 0);

-- Skapa en Trigger som minskar lagersaldo efter en order
CREATE TRIGGER ReduceStock AFTER INSERT ON Orderrows
FOR EACH ROW
UPDATE Books SET Stock = Stock - New.amount WHERE BookID = New.BookID;

-- Skapa en Trigger som loggar när en ny kund registreras
CREATE Table CustomerLog (
LogID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT,
CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER LogNewCustomer AFTER INSERT ON Customer
FOR EACH ROW
INSERT INTO CustomerLog (CustomerID) VALUES (NEW.CustomerID);

-- Radera en kund
DELETE FROM Customer WHERE CustomerID = 3;


/*För att skapa en backup använd denna kod i CMD*/
-- mysqldump -u root -p Bookshop_adv < backup.sql

/*För att återskapa backup-filen kör denna kod i CMD*/
-- mysql -u root -p Bookshop_adv < backup.sql