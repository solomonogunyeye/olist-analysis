SELECT
    seller_id,
    order_year,
    order_month,
    SUM(revenue) AS monthly_revenue
FROM seller_performance_base
GROUP BY
    seller_id,
    order_year,
    order_month
ORDER BY
    seller_id,
    order_year,
    order_month;
