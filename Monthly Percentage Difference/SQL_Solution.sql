```sql
WITH monthly_revenue AS (
    SELECT 
        TO_CHAR(created_at, 'YYYY-MM') AS year_month,
        SUM(value) AS revenue
    FROM sf_transactions
    GROUP BY TO_CHAR(created_at, 'YYYY-MM')
),
revenue_with_lag AS (
    SELECT
        year_month,
        revenue,
        LAG(revenue) OVER (ORDER BY year_month) AS prev_revenue
    FROM monthly_revenue
)
SELECT 
    year_month,
    ROUND(
        (revenue - prev_revenue) * 100.0 / NULLIF(prev_revenue, 0),
        2
    ) AS revenue_diff_pct
FROM revenue_with_lag
ORDER BY year_month;
