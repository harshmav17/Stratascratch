WITH CTE AS (
SELECT  
        first_name, 
        order_date, 
        SUM(total_order_cost) AS total_order_cost,
        DENSE_RANK() OVER(ORDER BY SUM(total_order_cost) DESC ) AS rn
from customers c
JOIN Orders o ON c.id=o.cust_id
WHERE o.order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY first_name, order_date
)
SELECT 
        first_name, 
        total_order_cost, 
        order_date 
FROM CTE
WHERE rn=1
