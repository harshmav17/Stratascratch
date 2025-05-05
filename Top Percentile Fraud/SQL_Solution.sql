WITH ranked_claims AS (
    SELECT *,
           PERCENT_RANK() OVER (PARTITION BY state ORDER BY fraud_score DESC) AS fraud_percentile
    FROM fraud_score
)
SELECT 
    policy_num,state,claim_cost,fraud_score
FROM ranked_claims
WHERE fraud_percentile >= 0.95;
