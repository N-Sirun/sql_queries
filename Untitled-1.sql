/*
SELECT
FirstName,
LastName,
BirthDate,
substr(BirthDate, 1, 10),
strftime ('%Y-%m-%d',BirthDate) as [Birth_date],
strftime('%Y-%m-%d','now') - strftime('%Y-%m-%d',BirthDate) as [Age],
FROM
Employee


SELECT
sum(Total) as [Total Sales],
round(avg(Total)),
max(Total),
min(Total),
count(*)
FROM
Invoice


SELECT
BillingCountry,
BillingCity,
round(AVG(total),2)
FROM
Invoice
GROUP BY
BillingCountry, BillingCity
ORDER BY
BillingCountry
*
SELECT
BillingAddress,
BillingCountry,
BillingCity,
total
FROM
Invoice
WHERE 
total >
(SELECT avg(total) from Invoice)
ORDER BY 
total


SELECT 
BillingCity,
round(AVG(total),2),
(SELECT round(AVG(total),2) from Invoice) as 'Global sale'
FROM
Invoice
GROUP BY BillingCity
Order BY BillingCity

SELECT
InvoiceDate,
BillingCity,
BillingAddress,
InvoiceId
FROM
Invoice
WHERE InvoiceDate IN

(SELECT
InvoiceDate
FROM
Invoice
WHERE
InvoiceId IN(251,252,253))


SELECT
TrackId,
Composer,
Name
FROM
Track
WHERE
TrackId
NOT IN
(SELECT
DISTINCT TrackId
FROM
InvoiceLine
ORDER BY 
TrackId )


--SQLite

CREATE VIEW V_AVGTotal AS
SELECT
round(avg(total),2) as [Average Total]
FROM
Invoice
*/

---Inserting, Updating, Deleting Data---

INSERT INTO
Artist (Name)
VALUES('Test Artist1')


UPDATE
Artist 
SET Name = 'New Test Artist'
WHERE ArtistID = 277
*/

DELETE
FROM
Artist
WHERE
ArtistId = 277


-- SQL Code Challenge
SELECT 
g.Name AS Genre,
AVG(t.milliseconds) AS AverageDuration
FROM 
Track AS t
INNER JOIN
Genre AS g
ON g.GENREID = t.GENREID
GROUP BY g.Name
LIMIT 5;


SELECT 
   c.CustomerID,
   c.FirstName, c.LastName,
   SUM(i.Total) AS TotalPurchaseAmount
FROM
   Customer с
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalPurchaseAmount DESC;

SELECT 
e.EmployeeId, e.FirstName, e.Lastname, 
COUNT(CustomerId) AS NumberOfCustomers
 From Employee e
 JOIN Customer с ON
 e.EmployeeId = SupportRepId
 Group BY  e.EmployeeId, e.FirstName, e.Lastname
 ORDER BY NumberOfCustomers DESC;