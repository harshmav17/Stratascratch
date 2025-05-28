# 🧮 Monthly Percentage Difference

> **StrataScratch ID:** [10319 - Monthly Percentage Difference](https://platform.stratascratch.com/coding/10319-monthly-percentage-difference?code_type=6)  
> **Company:** Amazon  
> **Difficulty:** Hard  
> **Roles:** Data Engineer, Data Analyst, Data Scientist, BI Analyst, ML Engineer, Software Engineer  
> **Last Updated:** May 2025

---

## 📌 Problem Statement

Given a table of **purchases by date**, calculate the **month-over-month percentage change in revenue**.

### Output Requirements
- Output should include:
  - `year_month` in `YYYY-MM` format
  - `revenue_diff_pct`: percentage change in revenue from the previous month (rounded to **2 decimal places**)
- The first month’s value will be `NULL` or empty since there is no prior data for comparison.
- The result should be sorted chronologically by month.

---

## 💡 Formula

\[
\text{{revenue\_diff\_pct}} = \left( \frac{{\text{{this month's revenue}} - \text{{last month's revenue}}}}{{\text{{last month's revenue}}}} \right) \times 100
\]

---

## 🧾 Table: `sf_transactions`

| Column Name   | Data Type |
|---------------|-----------|
| id            | bigint    |
| created_at    | date      |
| value         | bigint    |
| purchase_id   | bigint    |

---

## 🔍 Sample Output

| year_month | revenue_diff_pct |
|------------|------------------|
| 2019-01    |                  |
| 2019-02    | -28.56           |
| 2019-03    | 23.35            |
| 2019-04    | -13.84           |
| 2019-05    | 13.49            |

---

## 🛠️ Approach

1. **Extract Year-Month** from `created_at` field.
2. **Group by** Year-Month and **sum the revenue**.
3. Use **window functions** to calculate previous month's revenue.
4. Calculate **percentage difference**.
5. **Round** to 2 decimal places.
6. **Order** the result chronologically.

---

## 🧠 SQL Concepts Used

- Date formatting with `TO_CHAR()`
- Aggregation with `SUM()`
- Window function: `LAG()`
- CTEs (Common Table Expressions)
- Arithmetic operations
- Rounding functions
- Sorting

---
