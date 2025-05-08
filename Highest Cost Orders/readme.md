# 💰 Highest Cost Orders

**Question ID**: 9915  
**Platform**: [StrataScratch](https://platform.stratascratch.com/coding/9915-highest-cost-orders?code_type=6)  
**Difficulty**: Medium  
**Companies**: Shopify, Amazon  
**Role Tags**: Data Engineer, Data Scientist, BI Analyst, Data Analyst, ML Engineer

---

## 🧾 Problem Statement

Find the **customer with the highest daily total order cost** between **2019-02-01** and **2019-05-01**.

- If a customer made **multiple orders on the same day**, sum their order costs to compute the **daily total**.
- Return the customer's **first name**, the **total cost of their items on that day**, and the **date**.
- Assume all first names are **unique**.

---

## 📊 Table Schemas

### `customers`

| Column Name   | Data Type |
|---------------|-----------|
| id            | bigint    |
| first_name    | string    |
| last_name     | string    |
| city          | string    |
| address       | string    |
| phone_number  | string    |

### `orders`

| Column Name      | Data Type |
|------------------|-----------|
| id               | bigint    |
| cust_id          | bigint    |
| order_date       | date      |
| order_details    | string    |
| total_order_cost | bigint    |

---

## 🧠 Approach

1. **Join** `orders` with `customers` on customer ID.
2. **Filter** the orders between `2019-02-01` and `2019-05-01`.
3. **Group by** customer and order date, summing up `total_order_cost` for each day.
4. **Find the record(s)** with the **maximum daily total** across all customers and dates.
5. **Return**: `first_name`, `total_order_cost`, and `order_date`.

---

## ✅ Sample Output

| first_name | total_order_cost | order_date |
|------------|------------------|------------|
| Alice      | 1150             | 2019-03-15 |

---
