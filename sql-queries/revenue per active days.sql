SELECT
    seller_id,
    COUNT(DISTINCT order_date) AS active_days,
    ROUND(
        SUM(revenue) / COUNT(DISTINCT order_date),
        2
    ) AS avg_revenue_per_active_day
FROM seller_performance_base
GROUP BY seller_id
ORDER BY avg_revenue_per_active_day DESC;
