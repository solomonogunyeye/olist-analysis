SELECT
  seller_id,
  AVG(price) AS avg_item_price
FROM olist_order_items
GROUP BY seller_id
ORDER BY avg_item_price DESC;

