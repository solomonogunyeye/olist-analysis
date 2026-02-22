SELECT
    product_id,
    SUM(price + freight_value) AS total_revenue
FROM olist_order_items
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;
