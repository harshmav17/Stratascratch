# 🚨 Top Percentile Fraud

**Question ID**: 10303  
**Platform**: [StrataScratch](https://platform.stratascratch.com/coding/10303-top-percentile-fraud?code_type=5)  
**Difficulty**: Hard  
**Companies**: Google, Netflix  
**Role Tags**: Data Engineer, Data Scientist, BI Analyst, Data Analyst, ML Engineer

---

## 🧾 Problem Statement

Identify the **most suspicious insurance claims** in each state.

- Flag the **top 5 percentile** of claims based on `fraud_score` **within each state**.
- Output the following columns for flagged claims:
  - `policy_num`
  - `state`
  - `claim_cost`
  - `fraud_score`

---

## 📊 Table Schema

**Table**: `fraud_score`

| Column Name | Data Type |
|-------------|-----------|
| claim_cost  | bigint    |
| fraud_score | float     |
| policy_num  | varchar   |
| state       | varchar   |

---

## 🧠 Approach

1. Use the `PERCENT_RANK()` or `NTILE()` window function to **rank claims by fraud score within each state**.
2. Filter out only those records where the fraud score falls in the **top 5 percentile** (`>= 95th percentile`).
3. Select and return the required columns.

---

## ✅ Sample Output

| policy_num | state | claim_cost | fraud_score |
|------------|-------|------------|-------------|
| ABC123     | CA    | 18000      | 0.97        |
| XYZ456     | TX    | 22000      | 0.95        |

---
