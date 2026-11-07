-- Question 1: Which countries bring in the most revenue?
-- Tables used: Invoice

USE Chinook;

SELECT
    BillingCountry,
    COUNT(*) AS number_of_invoices,
    ROUND(SUM(Total), 2) AS total_revenue
FROM Invoice
GROUP BY BillingCountry
ORDER BY total_revenue DESC;