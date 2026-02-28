# olist-analysis
This project involves an in-depth analysis of an Olist sales dataset. The goal is to uncover insights into sales trends, revenue performance and consistency, and shipping metrics to support business decision-making, optimize inventory, and improve customer experience.

# Dataset-Description
  TABLE 1: OLIST ORDER ITEMS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
|order id   | text   | text|  unique identifier for each order.     |
| order item id      | integer  |integer        | unique identifier for each order item.       |
| product id  |string | text         | unique identifier for each product.        |
| seller id      | string |text          | unique identifier for each order seller.       |
|shopping limit date| timestamp with timezone | timestamp with timezone | deadline to complete a purchase.|
| price| numeric | numeric | price of order.|
|freight value| numeric| numeric|shipping cost.|
DATASET SIZE: 112650 rows, 7 columns.

   TABLE 2: ORDER REVIEWS.
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| review id| text | text | unique identifier of each review.| 
| order id | string |text| unique identifier of each order.|
| review score| integer | integer |score given for product quality.|
| review comment title|text|text| title of review.|
| review comment message| text| text| emphasis of the review|
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
|order delivered carrier date| timestamp without time zone| timestamp without time zone| shiping commencement from the carrier.|
| order delivered customer date| timestamp without time zone| timestamp without time zone| delivered date.|
| order estmated delivery date| timestamp without time zone | timestamp without time zone | supposed time of delivery.| 
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
|seller id| string| text|unique identifier of each product.|
|seller zip code| integer|integer| zip code of seller.|
|seller city| text|text| city of seller.|
|seller state| text|text| state of seller.|
DATASET SIZE: 3095 rows, 4 columns.

# Objectives
1. Identify superstore shipping efficiency.
2. Analyze category revenue and performance.
3. Identify profit generation with each City.

# Data cleaning and reprocessing
1. Removed 11 duplicates.
2. Confirmed all dates standard to DD/MM/YYYY.
3. Formatted uneven segments.
   
# Revenue Data Analysis
  Total revenue: $2,260,280.2572

# Insights
1. A little more than 1% of customers spent more than ten thousand dollars within the span of three years.
2. The total average shipping days is 22.60 days, this is due to stores having delivery spans of up to 50 days.
3. 59%  of stores possess orders with delivery averages of more than ten days with 25% having more than 50 days.
4. 10% of stores have delivery days of more than 100 days per orders.
5. These long delivery spans despite being in geographically secure areas could be due to outlier factors as further investigation into suspicious cities revealed orders in these city are rare and non constant.
6. long delivery days are rare but upon occurring severely influence the average delivery days. physical investigation into these branches are advised.

# City Revenue Analysis
1. The ten highest revenue earners make up 69.1% of total revenue.

# Key Findings
1. Review comment titles and review comment message are mostly null, this is most likely due to reviewers not specifying the reason for the review and not missing data.
2. There is notable increase in sales in the months March and August through December with the highest sales metrics at September, November and December. There is also a sharp decline in the sales in the month of February despite being a holiday month.
3. November and December increase in sales are most likely due to year end holidays. September shows an unexpected sales spike not directly aligned with major retail holidays. Further investigation into promotional or demographic drivers is recommended.
4. Western and eastern regions possess almost two times the sales as the central and southern regions likely due to higher population in those regions.
5. The Technology category is the highest generator of revenue though there isn't a major disparity between the other two categories.

# Key Notes
1. Shipping days may be negatively influenced.
2. A September demographic investigation should be carried out.
