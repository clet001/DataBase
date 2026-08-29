USE QACS_CH02;

-- Show all data in each of the tables.
SELECT *
FROM CUSTOMER, ITEM, SALE, SALE_ITEM;

-- B. List the LastName, FirstName, and Phone of all customers

SELECT LastName, FirstName, Phone
FROM CUSTOMER;

-- C. List the LastName, FirstName, and Phone for all customers with a FirstName of 'John'
SELECT LastName, FirstName, phone
FROM CUSTOMER
WHERE FirstName = 'John';

-- D. List the LastName, FirstName, Phone, SaleDate, and Total of all sales in excess of $100.00.
SELECT C.LastName, C.FirstName, C.Phone,
	S.SaleDate, S.Total
FROM CUSTOMER AS C, SALE AS S
WHERE C.CustomerID = S.CustomerID AND
	S.Total > 100;

-- E
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE FirstName LIKE "D%";

-- F
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE LastName LIKE "%ne%";

-- G
-- SELECT LastName, FirstName, Phone
-- FROM CUSTOMER
-- WHERE Phone 

-- H
SELECT MAX(Total) as MaximumSale,
	MIN(Total) as MinimumSale
FROM SALE;

-- I
SELECT AVG(Total) AS AverageSales
FROM SALE;

-- J
SELECT COUNT(CustomerID) AS NumberOfCustomer
FROM CUSTOMER;

-- K
SELECT LastName, FirstName , COUNT(*) as NumberOfCustomer
FROM CUSTOMER
Group BY LastName, FirstName;
