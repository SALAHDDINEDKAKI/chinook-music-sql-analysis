-- Question 6: What is the total sales by employee?
-- Tables used: Employee, Customer, Invoice

USE Chinook;

SELECT
    em.EmployeeId,
    em.FirstName,
    em.LastName,
    COUNT(i.InvoiceId) AS number_of_invoices,
    ROUND(SUM(i.Total), 2) AS total_sales
FROM Employee em
JOIN Customer c ON em.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY em.EmployeeId, em.FirstName, em.LastName
ORDER BY total_sales DESC;