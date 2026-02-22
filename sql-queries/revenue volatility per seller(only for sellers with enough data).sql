SELECT
  seller_id,
  STDDEV_SAMP(price) AS revenue_volatility
FROM olist_order_items
GROUP BY seller_id
HAVING COUNT(price) >= 2
ORDER BY revenue_volatility DESC;

