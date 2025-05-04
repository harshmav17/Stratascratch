# 💼 Employee and Manager Salaries

**Question ID**: 9894  
**Platform**: [StrataScratch](https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?code_type=6)  
**Difficulty**: Medium  
**Companies**: Walmart, Best Buy, Dropbox, Medium  
**Role Tags**: Data Engineer, Data Scientist, BI Analyst, Data Analyst, ML Engineer

---

## 🧾 Problem Statement

Find employees who earn **more than their managers**.

Return the **first name** of each qualifying employee and their **salary**.

---

## 📊 Table Schema

**Table**: `employee`

| Column Name     | Data Type |
|------------------|-----------|
| id               | bigint    |
| first_name       | string    |
| last_name        | string    |
| age              | bigint    |
| sex              | string    |
| employee_title   | string    |
| department       | string    |
| salary           | bigint    |
| target           | bigint    |
| bonus            | bigint    |
| email            | string    |
| city             | string    |
| address          | string    |
| manager_id       | bigint    |

---

## 🧠 Approach

1. Perform a **self-join** on the `employee` table:
   - Join `e1` (employees) with `e2` (managers) where `e1.manager_id = e2.id`.
2. Filter records where the **employee's salary is greater than the manager's salary**.
3. Select and return the employee’s `first_name` and `salary`.

---

## ✅ Sample Output

| first_name | salary |
|------------|--------|
| Alice      | 130000 |
| Bob        | 115000 |

---
