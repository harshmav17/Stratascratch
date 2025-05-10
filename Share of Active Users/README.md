# 📌 Share of Active Users

- **Question ID**: 2005  
- **Source**: [StrataScratch](https://platform.stratascratch.com/coding/2005-share-of-active-users?code_type=6)  
- **Difficulty**: Medium  
- **Company Tag**: Facebook  
- **Role Tags**: Data Engineer, Data Scientist

---

## 🧾 Problem Statement

Calculate the **percentage of users** who are both from the **USA** and have an **'open' status**, as indicated in the `fb_active_users` table.

---

## 📊 Table Schema

**Table**: `fb_active_users`

| Column Name | Data Type |
|-------------|-----------|
| user_id     | integer   |
| name        | string    |
| status      | string    |
| country     | string    |

---

## 🧠 Approach

To solve this problem:

1. **Filter** the `fb_active_users` table to include only users from the **United States** (`country = 'USA'`).
2. **Count** the total number of users from the US.
3. **Count** the number of users from the US with an **'open'** status.
4. **Calculate the percentage** of active users by dividing the number of `'open'` users by the total number of US users.
5. **Format** the result as a percentage.

---

> ✅ This folder contains both **SQL** and **PySpark** solutions to the problem.
