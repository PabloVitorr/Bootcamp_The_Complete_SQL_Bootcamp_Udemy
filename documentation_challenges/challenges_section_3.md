# **Section 3: GROUP BY Statements**

<br/>

## **GROUP BY - Challenge**

We have two staff members, with Staff IDs 1 and 2. We want to give a bonus to the staff member that handled the most payments. (Most in terms of number of payments processed, not total dollar amount). **How many payments did each staff member handle and who gets the bonus**?

```sql
SELECT 
  staff_id, 
  COUNT(amount)
FROM payment
  GROUP BY staff_id
  ORDER BY COUNT(amount) DESC;
```

Corporate HQ is conducting a stydy on the relationship between replacement cost and a movie MPAA rating (e.g.G, PG, R, etc..). **What is the average replacement cost per MPAA rating**?
**Note:** You many need to expand the AVG column to view correct results.

```sql
SELECT 
  rating, 
  ROUND(AVG(replacement_cost), 4)
FROM film 
  GROUP BY rating
  ORDER BY AVG(replacement_cost) DESC;
```

We are running a promotion to reward our top 5 customers with coupons. **What are the customer ids of the top 5 customers by total spend**?

```sql
SELECT 
  customer_id,
  SUM(amount)
FROM payment 
  GROUP BY customer_id 
  ORDER BY SUM(amount) DESC
  LIMIT 5;
```

<br/>

## **HAVING - Challenge Tasks**

Whe are launching a platinum service for our most loyal customers. We will assign platinum status to customers that have had 40 or more transaction payments. **What customer_ids are elegible for platinum status**?

```sql
SELECT 
  customer_id, 
  COUNT(amount)
FROM payment
  GROUP BY customer_id
  HAVING COUNT(amount) >= 40
  ORDER BY COUNT(amount) DESC;
```

<br/>

[**<<==**](./challenges_section_2.md) |====| [**HOME**](../README.md) |====| [**==>>**](./assessment_test_1_section_4.md)