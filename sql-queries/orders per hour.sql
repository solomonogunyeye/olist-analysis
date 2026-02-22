SELECT
    seller_id,
    EXTRACT(HOUR FROM order_time) AS order_hour,
    COUNT(*) AS orders_count
FROM seller_performance_base
GROUP BY seller_id, order_hour
ORDER BY orders_count DESC;
