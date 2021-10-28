# Zillow Housing Prices ETL

In the previous activity, students had an opportunity to learn more about ETL workflows. In this activity, students will have an opportunity to practice those ETL workflow skills with the Zillow Housing Prices dataset. In this lesson, students have learned about a lot of different tools and how they interact together. This is a great opportunity to practice putting it all together. Students will often need to interact with these different tools in their jobs, so this is a great opportunity to practice.

## Instructions

1. Read the [zillow_housing_prices.csv](https://2u-data-curriculum-team.s3.amazonaws.com/dataviz-netflix/unit-7/zillow_housing_prices.csv) file into a PySpark DataFrame.

2. Create a new table called `zillowhousingprices` in the RDS Postgres database.

3. Modify the `2020-01`, `2020-02`, and `2020-03` columns to be floats.

4. Display the average price per state for the month of `2020-01`.

5. Sort this DataFrame in descending order.

6. Bulk insert the 2020 prices into the `zillowhousingprices` table.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand.  All Rights Reserved.
