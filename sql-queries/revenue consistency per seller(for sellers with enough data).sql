SELECT
  seller_id,
  VAR_SAMP(price) AS revenue_variance
FROM olist_order_items
GROUP BY seller_id
having count(price) >= 2
ORDER BY revenue_variance DESC;
