SELECT
  seller_id,
  SUM(price) AS total_revenue,
  STDDEV_SAMP(price) AS volatility
FROM olist_order_items
GROUP BY seller_id
HAVING SUM(price) > (
  SELECT AVG(total_rev) FROM (
    SELECT SUM(price) AS total_rev
    FROM olist_order_items
    GROUP BY seller_id
  ) t
)
ORDER BY volatility DESC;
