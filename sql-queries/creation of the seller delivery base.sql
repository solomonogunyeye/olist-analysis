CREATE TABLE seller_delivery_base AS
SELECT
    olist_order_items.seller_id,
    orders.orders_id,
    orders.order_purchase_timestamp AS order_time,
    DATE(orders.order_purchase_timestamp) AS order_date,
    EXTRACT(MONTH FROM orders.order_purchase_timestamp) AS order_month,
    EXTRACT(YEAR FROM orders.order_purchase_timestamp) AS order_year,
	 AVG(
        DATE_PART(
            'day',
            order_delivered_customer_date - order_purchase_timestamp
        )
    ) AS avg_delivery_days,
    olist_order_items.product_id,
    SUM(olist_order_items.price) AS revenue,
    COUNT(olist_order_items.order_item_id) AS quantity,
    orders.order_status
FROM orders
JOIN olist_order_items
    ON orders.orders_id = olist_order_items.order_id
JOIN sellers
    ON olist_order_items.seller_id = sellers.seller_id
GROUP BY
    olist_order_items.seller_id,
    orders.orders_id,
    orders.order_purchase_timestamp,
    olist_order_items.product_id,
    orders.order_status;
