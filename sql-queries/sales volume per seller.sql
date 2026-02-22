SELECT
  seller_id,
  COUNT(*) AS items_sold
FROM olist_order_items
GROUP BY seller_id
ORDER BY items_sold DESC;
