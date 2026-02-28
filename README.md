# olist-analysis
This project involves an in-depth analysis of an Olist sales dataset. The goal is to uncover insights into sales trends, revenue performance and revenue volatility, and shipping metrics to support business decision-making, optimize inventory, and improve customer experience.

# Dataset-Description
  TABLE 1: OLIST ORDER ITEMS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
|order id   | text   | text|  unique identifier for each order.     |
| order item id      | integer  |integer        | unique identifier for each order item.       |
| product id  |string | text         | unique identifier for each product.        |
| seller id      | string |text          | unique identifier for each order seller.       |
|shopping limit date| timestamp with timezone | timestamp with timezone | deadline to complete a purchase.|
| price| numeric | numeric | price of order item.|
|freight value| numeric| numeric|shipping cost.|

DATASET SIZE: 112650 rows, 7 columns.

   TABLE 2: ORDER REVIEWS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| review id| text | text | unique identifier of each review.| 
| order id | string |text| unique identifier of each order.|
| review score| integer | integer |score given for product quality.|
| review comment title|text|text| title of review.|
| review comment message| text| text|content of the review.|
|review creation date| timestamp without time zone|timestamp without time zone|date review was created.|
|review answer timestamp| time without timezone| time without timezone| time of day review was answered.|

DATASET SIZE: 99224 rows, 8 columns.

  TABLE 3: ORDERS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| order id      | string  | text         | unique identifier for each order.       |
| customer id  |string | text         | unique identifier of each customer.        |
| order status      | text |text          | completion level of order.       |
| order purchase timestamp | timestamp without time zone | timestamp without time zone| time of order.|
| order approved at| timestamp without time zone | timestamp without time zone | time of order approval.|
|order delivered carrier date| timestamp without time zone| timestamp without time zone| shipping commencement from the carrier.|
| order delivered customer date| timestamp without time zone| timestamp without time zone| delivered date.|
| order estimated delivery date| timestamp without time zone | timestamp without time zone | supposed time of delivery.| 

DATASET SIZE: 99441 rows, 8 columns.

   TABLE 4: PRODUCT CATEGORY NAME TRANSLATION.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| product category name | text |text|product category name in its original language.|
| product category name english| text | text |product category name in english.|

DATASET SIZE: 71 rows, 2 columns.

   TABLE 5: SELLER PERFORMANCE BASE. 
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
|seller id|string|text| unique identifier of each seller.|
|order id| text| text|unique identifier of each order.|
|order time| timestamp without time zone|timestamp without time zone| order date and time.|
|order date| date| date| date of order without time.
|order month|integer|numeric| month of order in numeric.|
|order year|numeric| numeric| year of order.|
|avg delivery days| integer| double precision|average days of delivery per seller.|
|product id| string| text|unique identifier of each product.|
|revenue| integer| numeric| revenue per seller.|
|quantity| integer| bigint| quantity of items purchased.|
|order status| text|text| completion level of order.|

DATASET SIZE: 102425 rows,11 columns.

   TABLE 6: SELLERS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
|seller id| string| text|unique identifier of each seller.|
|seller zip code| integer|integer| zip code of seller.|
|seller city| text|text| city of seller.|
|seller state| text|text| state of seller.|

DATASET SIZE: 3095 rows, 4 columns.

# Objectives
1. Identify Olist shipping efficiency.
2. Identify Olist seller efficiency.
3. Analyze trends.
4. Identify seller revenue.

# Data cleaning and reprocessing
1. Removed multiple duplicates.
2. Confirmed all dates standard to YYYY-MM-DD.
3. Formatted uneven segments.
   
# Revenue Data Analysis
  Total revenue: R$13,591,643.70

# Insights
1. Only 2.7% of sellers have a revenue of R$1,000 per active day.
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
