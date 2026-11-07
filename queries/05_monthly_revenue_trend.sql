-- Question 5: What is the monthly revenue trend for the last year?
-- Tables used: Invoice

USE Chinook;

SELECT
    YEAR(InvoiceDate) AS invoice_year,
    MONTH(InvoiceDate) AS invoice_month,
    COUNT(*) AS number_of_invoices,
    ROUND(SUM(Total), 2) AS total_revenue
FROM Invoice
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY invoice_year, invoice_month;