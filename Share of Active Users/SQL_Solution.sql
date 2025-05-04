SELECT 
    100.0 * COUNT(CASE WHEN country = 'USA' AND status = 'open' THEN 1 END) / COUNT(*) AS us_active_share
FROM fb_active_users;
