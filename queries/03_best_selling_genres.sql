-- Question 3: What are the best-selling genres by revenue?
-- Tables used: Genre, Track, InvoiceLine

USE Chinook;

SELECT
    g.GenreId,
    g.Name,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS total_revenue
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY total_revenue DESC
LIMIT 10;