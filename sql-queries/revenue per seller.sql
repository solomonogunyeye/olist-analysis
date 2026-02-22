SELECT
  seller_id,
  SUM(price) AS total_revenue
FROM olist_order_items
GROUP BY seller_id
ORDER BY total_revenue DESC;
