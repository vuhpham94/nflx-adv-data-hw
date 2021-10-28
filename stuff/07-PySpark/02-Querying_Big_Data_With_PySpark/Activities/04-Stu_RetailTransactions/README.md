# Retail Transactions

In the previous activity, students learned more about the `groupBy()` and `agg()` methods. In this activity, students will have an opportunity practice using these methods with the `Retail Transactions` dataset. Understanding how these methods work is incredibly important, as this is another step towards being able to transform data into different forms. These are skills that students will use in their careers on a regular basis.

## Instructions

1. Read the [retail_transations.csv](https://2u-data-curriculum-team.s3.amazonaws.com/dataviz-netflix/unit-7/retail_transactions.csv) file from S3 into PySpark.

2. Convert the `transaction_acmount` column from a string to a float.

3. Find the average `transaction_amount` by grouping by `customer_id`.

4. Find the maximum `transaction_amount` per customer by grouping by `customer_id`.

5. Find the sum of `transaction_amount` per customer by grouping by `customer_id`.

6. Find the average `transaction_amount` per `transaction_date`.

7. Find the sum of `transaction_amount` per `transaction_date`.

8. Find the maximum `transaction_amount` per `transaction_date`.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand.  All Rights Reserved.
