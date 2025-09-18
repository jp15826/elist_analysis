# Sales Trends Analysis for E-commerce Company Elist


# Overview
The goal of this project is to investigate trends in sales, average order value, the loyalty program, and refund rates to provide insights into the business' performance across key areas. Based on these insights, recommendations are provided on where the business should focus efforts to drive growth.

Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad. The company has a core dataset consisting of orders, order statuses, customers, products, and geographic information. 

## ERD
<p align="center">
  <img width="640" height="640" alt="image" src="https://github.com/user-attachments/assets/4ddb7588-51c6-444c-bfcf-3cacdb3b110e" />
</p>

## Summary of Insights
From 2019 to 2022, the total sales was ~$28M, average yearly sale revenue was ~$7M and the average order value (AOV) was $254. During the 2019-2022 period, sales in 2020 saw dramatic growth which can be attributed to the start of the pandemic. However, the total sales, average order value, and order count began to decline in 2022, highlighting the need to identify strategies to sustain the growth momentum achieved in 2020.


## Sales Trends and Growth Rates
* Sales experienced significant growth from 2019 to 2020 with revenue increasing from ~$3.9M to ~$10.2M. However, this was not sustained as sales declined steadily, falling to ~$4.9M by 2022. Similarly, this can also be seen in the average order value (AOV), which peaked at $300 in 2020 but decreased to $230 in 2022. 2020 experienced the biggest growth rate across total sales revenue, AOV, and number of sales. Although 2021 experienced positive growth in the number of sales, the total sales revenue decreased by 10% as people purchased items that were less expensive by 15% than in 2020. 

* North America leads in total sales, followed by EMEA, APAC, and LATAM, indicating that the majority of revenue is generated from the North American market. APAC leads LATAM in sales but fall short of NA and EMEA, with LATAM consistently underperforming across regions.
<p align="center">
  <img width="600" height="600" alt="image" src="https://github.com/user-attachments/assets/364fd27f-d2c8-401b-a7b7-d1d39de391c2" />
</p>
<p align="center">
  <img width="430" height="430" alt="image" src="https://github.com/user-attachments/assets/b7fa136b-04ca-489f-ae55-a13ef2162fbc" />
</p>


## Product Trends

In 2022, sales of the Gaming Monitor nearly halved compared to 2021, suggesting that demand may be normalizing post-pandemic. Apple AirPods also saw a sharp decline, down 44% by 2022, which likely reflects both market saturation and the rise of cheaper competitor earbuds. The MacBook Air experienced a $2.9M spike in 2020, but sales have trended downward each year since. The top three products, Gaming Monitors, AirPods, and MacBook Air, dominated sales in 2020, highlighting demand driven by at-home setups and remote work. Webcams grew 134% YoY from 2020 to 2021, reinforcing the WFH trend, though demand has declined since 2021. Bose Headphones peaked early before entering a decline, while the charging pack, iPhone, and ThinkPad Laptop generated less than $500K each in total sales, indicating they are not core revenue drivers.

<p align="center">
  <img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/9dfd7d6a-102d-4d2e-af95-a22c23e531a9" />
</p>


## Loyalty Program
From 2019 to 2021, the non-loyalty program customers were performing better when compared to the loyalty program customers, with a noticeably higher AOV    ($233–$345 vs. $207–$249). However, in 2022, the AOV for loyalty program customers rose to $245 while the non-loyalty program customers dropped to $214, creating a $30 increase over the non-loyalty program customers. Additionally, there has been an increasingly upward trend in order count for the loyalty program customers over the years, so it is recommended to keep the loyalty program.
<p align="center">
  <img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/a31d2e2e-6b0f-4b25-a39a-8ae4644c3cfe" />
</p>

## Refund Rates
The top refunded product was the Thinkpad Laptop at 11.7%. Macbook Air and Apple iPhone also have high refund rates at 11.4% and 7.6%. Refund rates were highest for Apple Airpods in 2020 with 1,529 headphones refunded at 9% compared to 5% in 2019 and 4% in 2021. The lowest refund rates were in 2022 at 0%, but this may be a data incompleteness issue or an implementation of a no-refund policy. If a no-refund policy was implemented, it may have affected customer satisfaction, potentially contributing to the decline in sales, and should be considered when identifying strategies to restore growth.
<p align="center">
  <img width="370" height="370" alt="image" src="https://github.com/user-attachments/assets/538da20b-b6b9-48c0-b24b-37d3298da080" />
<p align="center">

## Recommendations
Based on the analysis and insights, the following recommendations are provided:

### Products:
* Since current sales are driven primarily by monitors, headphones, and laptops, it is recommended to focus on similar product categories to strengthen sales and market reach. If cuts are necessary, discontinuing Bose headphones, Samsung product lines, and the Apple iPhone should be considered.

### Loyalty Program:
* It is recommended that the loyalty program be continued, as there has been an increase in orders contributing to higher sales. The program also generates valuable data on customer purchasing behavior, which can inform future sales strategies.
  
### Refund Rates:
* Identify root causes for high refund rates, particularly for products like the Thinkpad Laptop, MacBook Air, and Apple iPhone. Confirm whether the observed low refund rates are due to a no-refund policy or incomplete data.

### Operational Effectiveness:
* While delivery times across all regions were similar at an average of 7.5 days, EMEA experienced the longest delivery times. As business continues to grow globally, consider evaluating other delivery partners to ensure faster, more consistent shipping that meets increasing customer expectations.
  




