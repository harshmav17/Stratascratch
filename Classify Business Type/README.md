# 🏪 Classify Business Type

**Question ID**: 9726  
**Platform**: [StrataScratch](https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=6)  
**Difficulty**: Medium  
**Company**: Yelp  
**Role Tags**: Data Engineer, Data Analyst, Data Scientist

---

## 🧾 Problem Statement

Classify each business in the `yelp_business` table as either a **Restaurant** or **Non-Restaurant** based on its name.

If the business name contains food-related keywords such as `'restaurant'`, `'cafe'`, `'bar'`, `'bistro'`, or `'diner'` (case-insensitive), label it as a **Restaurant**. Otherwise, label it as **Non-Restaurant**.

---

## 📊 Table Schema

**Table**: `yelp_business`

| Column Name | Data Type |
|-------------|-----------|
| business_id | integer   |
| name        | string    |

---

## 🧠 Approach

1. Identify a list of **keywords** related to restaurants (e.g., `'restaurant'`, `'cafe'`, `'bar'`, `'bistro'`, `'diner'`).
2. Perform a **case-insensitive check** on the `name` field using `LIKE`, `ILIKE`, or regex.
3. Use conditional logic to assign:
   - `'Restaurant'` if a match is found.
   - `'Non-Restaurant'` otherwise.
4. Return the `business_id`, `name`, and a new column `business_type`.

---

## ✅ Sample Output

| business_id | name                 | business_type   |
|-------------|----------------------|------------------|
| 1           | John's Cafe          | Restaurant       |
| 2           | Tech Solutions       | Non-Restaurant   |
| 3           | Sunset Bar & Grill   | Restaurant       |
| 4           | Bookstore Central    | Non-Restaurant   |

---
