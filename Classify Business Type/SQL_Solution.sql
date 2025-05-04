SELECT DISTINCT
    business_name,
    CASE
        WHEN LOWER(business_name) LIKE '%restaurant%' THEN 'restaurant'
        WHEN LOWER(business_name) LIKE '%cafe%' 
          OR LOWER(business_name) LIKE '%café%' 
          OR LOWER(business_name) LIKE '%coffee%' THEN 'cafe'
        WHEN LOWER(business_name) LIKE '%school%' THEN 'School'
        ELSE 'Other'
    END AS Classifications
FROM sf_restaurant_health_violations;
