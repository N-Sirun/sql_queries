
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
*/




SELECT
CustomerId,
Company,
Country,
Address
FROM
Customer
GROUP BY Country
ORDER BY Company DESC;