-- Question 2: Who are the top 10 customers by revenue?
-- Tables used: Customer, Invoice

USE Chinook;

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    COUNT(i.InvoiceId) AS number_of_invoices,
    ROUND(SUM(i.Total), 2) AS total_revenue
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY total_revenue DESC
LIMIT 10;