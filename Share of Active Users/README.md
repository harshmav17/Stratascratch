📌 Share of Active Users
Question ID: 2005
Source: StrataScratch
Difficulty: Medium
Company Tag: Facebook
Role Tags: Data Engineer, Data Scientist, BI Analyst, Data Analyst

🧾 Problem Statement
Calculate the percentage of users who are both from the US and have an 'open' status, as indicated in the fb_active_users table.

📊 Table Schema
fb_active_users
| Column Name | Data Type |
|-------------|-----------|
| user_id     | integer   |
| name        | string    |
| status      | string    |
| country     | string    |

🧠 Approach
To solve this problem:
-- Filter the fb_active_users table to include only users from the United States (country = 'USA').
-- Count the total number of users from the US.
-- Count the number of users from the US with an 'open' status.
-- Calculate the percentage of active users by dividing the number of 'open' users by the total number of users from the US.
