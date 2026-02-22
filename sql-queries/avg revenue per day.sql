SELECT
    seller_id,
    COUNT(DISTINCT order_date) AS active_days,
    SUM(revenue) / COUNT(DISTINCT order_date) AS avg_revenue_per_day
FROM seller_performance_base
GROUP BY seller_id;
