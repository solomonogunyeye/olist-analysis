# olist-analysis
This project involves an in-depth analysis of the Olist sales dataset. The goal is to uncover insights into sales trends, revenue performance and revenue volatility, and shipping metrics to support business decision-making, optimize inventory, and improve customer experience.


# Objectives
1. Identify Olist shipping efficiency.
2. Identify Olist seller efficiency.
3. Analyze and identify sales trends.
4. deliver precise seller revenue.

   
##  Dataset
| Detail | Info |
|---|---|
| **Source** | Kaggle |
| **Scope** | Brazilian e-commerce transactions|
| **Size** | 500,000+ across 6 Tables |
| **Period** | January 2016 – December 2018 |
| **Key columns** | Crders, Customers, Sellers, Reviews |


# Data cleaning and reprocessing
1. Removed multiple duplicates.
2. Confirmed all dates standard to YYYY-MM-DD.
3. Formatted uneven segments.
   
# Revenue Data Analysis
  Total revenue: R$13,591,643.70

  ## SQL Approach
Key techniques used:
- Window functions for revenue ranking across sellers
- CTE structure for the creation of the seller delivery and seller performance base.
```sql
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
```

# Dashboard preview
![Olist Dashboard](images/dashboard%20prv%206.png)

 
# Insights
1. 2.7% of sellers have a revenue of less than R$1,000 per active day.
2. 97% of sellers have a delivery span of less than 20 days
3. Months March through August show to be the most revenue dense months with September, October and December showing notable revenue decline despite December being a major holiday month. 
4. 97% of orders were succesful deliveries.
5. The top 20% of sellers have volatility less than 50% of total revenue standard deviation.


# Key Findings
1. Olist sellers are highly efficient and possess high delivery value.
2. An investigation of Brazilian holiday culture need to be done.


# Key Notes
1. Null values were kept due to need to preserve uniformity of data structure.
2. In order to remove the need for join functions and also create columns with prepared data for future use, new tables named seller performancance and seller delivery base were created using the create table function.
