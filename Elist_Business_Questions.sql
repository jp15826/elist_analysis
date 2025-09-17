--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 


SELECT DATE_TRUNC(orders.purchase_ts, quarter) as purchase_quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(orders.usd_price),2) as total_sales,
  ROUND(AVG(orders.usd_price),2) as aov
FROM core.orders
LEFT JOIN core.customers
ON orders.customer_id=customers.id
LEFT JOIN core.geo_lookup
ON customers.country_code=geo_lookup.country
WHERE orders.product_name LIKE '%Macbook%' AND region = 'NA'
group by 1
order by 1 desc;


--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 

SELECT geo_lookup.region, AVG(DATE_DIFF(order_status.delivery_ts,order_status.purchase_ts, day)) AS days_to_deliver
FROM core.order_status
LEFT JOIN core.orders
ON order_status.order_id=orders.id
LEFT JOIN core.customers
ON customers.id=orders.customer_id
LEFT JOIN core.geo_lookup
ON customers.country_code=geo_lookup.country
WHERE (orders.purchase_platform = 'website' AND EXTRACT (YEAR FROM orders.purchase_ts) = 2022) OR (orders.purchase_platform = 'mobile app')
GROUP BY 1
ORDER BY 2 DESC;



--3) What was the refund rate and refund count for each product overall?


SELECT CASE WHEN product_name ='27in"" 4k gaming monitor' THEN '27in 4k gaming monitor' ELSE product_name END as product_name_cleaned,
  SUM (CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refunds,
  AVG(100*CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate
FROM core.orders
LEFT JOIN core.order_status
ON orders.id=order_status.order_id
GROUP BY 1
ORDER BY 3 DESC;

-- 4) Within each region, what is the most popular product? -- 

WITH sales_by_product AS(
  SELECT region, 
    CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
    COUNT (DISTINCT orders.id) AS total_orders
  FROM core.orders
  LEFT JOIN core.customers
  ON orders.customer_id=customers.id
  LEFT JOIN core.geo_lookup
  ON customers.country_code=geo_lookup.country
  GROUP BY 1,2),

ranking_CTE AS(
  SELECT *,
  ROW_NUMBER() OVER(PARTITION BY region ORDER BY total_orders DESC) AS order_ranking
  FROM sales_by_product
  ORDER BY 4 ASC)

SELECT *
FROM ranking_CTE
WHERE order_ranking=1;

-- 5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

SELECT customers.loyalty_program, 
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, day)),1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, month)),1) AS months_to_purchase
FROM core.customers
LEFT JOIN core.orders
ON customers.id = orders.customer_id
GROUP BY 1;
