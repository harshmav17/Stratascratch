# 🏷️ Classify Business Type (Restaurant, Cafe, School, or Other)

**Question ID**: 9726  
**Platform**: [StrataScratch](https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=6)  
**Difficulty**: Medium  
**Company**: Yelp  
**Role Tags**: Data Engineer, Data Analyst, Data Scientist

---

## 🧾 Problem Statement

Classify each business in the `sf_restaurant_health_violations` table into one of the following types:

- `'restaurant'` if the business name contains the word `'restaurant'`
- `'cafe'` if it contains `'cafe'`, `'café'`, or `'coffee'`
- `'school'` if it contains the word `'school'`
- `'other'` for all remaining businesses

Ensure:
- Only **distinct business names** are returned
- If multiple records exist for the same business name, retain only **one unique instance**

---

## 📊 Table Schema

**Table**: `sf_restaurant_health_violations`

| Column Name           | Data Type |
|------------------------|-----------|
| business_id            | bigint    |
| business_name          | string    |
| business_address       | string    |
| business_city          | string    |
| business_state         | string    |
| business_postal_code   | double    |
| business_latitude      | double    |
| business_longitude     | double    |
| business_location      | string    |
| business_phone_number  | double    |
| inspection_id          | string    |
| inspection_date        | date      |
| inspection_score       | double    |
| inspection_type        | string    |
| violation_id           | string    |
| violation_description  | string    |
| risk_category          | string    |

---

## 🧠 Approach

1. Convert `business_name` to lowercase to perform **case-insensitive** matching.
2. Apply conditional logic:
   - If `'restaurant'` is in the name → classify as `'restaurant'`
   - If `'cafe'`, `'café'`, or `'coffee'` → classify as `'cafe'`
   - If `'school'` → classify as `'school'`
   - Else → `'other'`
3. Select **distinct** business names and their classification.

---

## ✅ Sample Output

| business_name         | business_type |
|------------------------|----------------|
| Joe’s Coffee House     | cafe           |
| San Francisco School   | school         |
| Panda Restaurant       | restaurant     |
| Lucky Laundromat       | other          |

---

