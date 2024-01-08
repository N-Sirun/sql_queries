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

*/
--SQLite

CREATE VIEW V_AVGTotal AS
SELECT
round(avg(total),2) as [Average Total]
FROM
Invoice