# olist-analysis
This project involves an in-depth analysis of an Olist sales dataset. The goal is to uncover insights into sales trends, revenue performance and revenue volatility, and shipping metrics to support business decision-making, optimize inventory, and improve customer experience.


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
