# Chinook Music Store: SQL Analysis

A SQL project that answers 7 business questions about a digital music store, using MySQL.

## About the data

The project uses the **Chinook** sample database, which represents a digital media store with customers, invoices, artists, albums, and tracks. The database has 11 tables. Source: https://github.com/lerocha/chinook-database

The database script is in the `data/` folder.

## Tools

- MySQL
- MySQL Workbench
- Git and GitHub

## SQL skills used

- Aggregate functions: `COUNT`, `SUM`, `MAX`
- `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`
- `JOIN` across 2 to 4 tables
- Date functions: `YEAR`, `MONTH`, `DATE_SUB`
- Subqueries

## Business questions and findings

| # | Question | Query file | Key finding |
|---|----------|-----------|-------------|
| 1 | Which countries bring in the most revenue? | `01_revenue_by_country.sql` | ___ is the top country with ___ in revenue |
| 2 | Who are the top 10 customers? | `02_top_10_customers.sql` | The top customer is ___ with ___ spent |
| 3 | Which genres sell best? | `03_best_selling_genres.sql` | ___ is the best-selling genre with ___ in revenue |
| 4 | Which artists earn the most? | `04_top_artists_by_revenue.sql` | ___ is the top artist with ___ in revenue |
| 5 | How does revenue change month by month? | `05_monthly_revenue_trend.sql` | The best month is ___ and the worst month is ___ |
| 6 | Which employee's customers bring in the most sales? | `06_sales_by_employee.sql` | ___ leads with ___ in sales |
| 7 | Which customers stopped buying? | `07_customers_who_stopped_buying.sql` | ___ customers have not bought in the last 12 months of the data |

## How to run this project

1. Install MySQL and MySQL Workbench.
2. Open `data/Chinook_MySql.sql` in Workbench and run it. This creates the `Chinook` database.
3. Open any file from the `queries/` folder and run it.

## Project structure

```
chinook-music-sql-analysis/
├── README.md
├── data/
│   └── Chinook_MySql.sql
└── queries/
    ├── 01_revenue_by_country.sql
    ├── 02_top_10_customers.sql
    ├── 03_best_selling_genres.sql
    ├── 04_top_artists_by_revenue.sql
    ├── 05_monthly_revenue_trend.sql
    ├── 06_sales_by_employee.sql
    └── 07_customers_who_stopped_buying.sql
```

## Author

Salahddine Dkaki
- LinkedIn: https://www.linkedin.com/in/salahddinedkaki/
- GitHub: https://github.com/SALAHDDINEDKAKI