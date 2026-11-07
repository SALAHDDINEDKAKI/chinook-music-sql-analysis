-- Question 7: Which customers stopped buying?
-- Clarification: last purchase is more than 12 months before the newest invoice in the data
-- Tables used: Customer, Invoice

USE Chinook;

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    MAX(i.InvoiceDate) AS last_purchase_date,
    ROUND(SUM(i.Total), 2) AS total_spent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
HAVING MAX(i.InvoiceDate) < DATE_SUB((SELECT MAX(InvoiceDate) FROM Invoice), INTERVAL 1 YEAR)
ORDER BY last_purchase_date;