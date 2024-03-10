# **Section 2: SQL Statement Fundamentals**

<br/>

## **Challenge: *SELECT***

Use a **SELECT** statement to grab the **first** and **last** names of every customer and their **email** address.

```sql
SELECT 
  first_name, 
  last_name, 
  email 
FROM customer;
```

<br/>

## **Challenge: *SELECT DISTINCT***

Use what you've learned about **SELECT DISTINCT** to retrieve the **distinct rating types our films** could have in our database.

```sql
SELECT
  DISTINCT(rating)
FROM film;
```

<br/>

## **Challenge: *SELECT WHERE***

A customer forgot their wallet at our store! We need to track down their email to inform them. What is the **email** for the **customer** with the name **Nancy Thomas**?

```sql
SELECT 
  email 
FROM customer
  WHERE first_name = 'Nancy' 
  AND last_name = 'Thomas';
```

A customer wants to know what the movie "Outlaw Hanky" is about. Could you give them the **description** for the movie "**Outlaw Hanky**"?

```sql
SELECT 
  description
FROM film
  WHERE title = 'Outlaw Hanky';
```

A customer is late on their movie return, and we've mailed them a letter to their address at '**259 Ipoh Drive**'. We should also call them on the phone to let them know. Can you get the **phone number** for the **customer** who lives at '**259 Ipoh Drive**'?

```sql
SELECT 
  phone 
FROM address
  WHERE address = '259 Ipoh Drive';
```

<br/>

## **Challenge: *ORDER BY***

We want to reward our first 10 paying customers. What are the **customer ids** of the **first 10 customers who created a payment**?

```sql
SELECT 
  customer_id 
FROM payment 
  ORDER BY payment_date ASC 
  LIMIT 10;
```

A customer wants to quickly rent a video to watch over their short lunch break. What are the **titles** of the 5 **shortest** (in length of runtime) **movies**?

```sql
SELECT 
  title, 
  length
FROM film	
  ORDER BY length ASC
  LIMIT 5;
```

If the previous customer can watch any movie that is **50 minutes or less in run time**, **how many options** does she have?

```sql
SELECT 
  COUNT(*) 
FROM film
  WHERE LENGTH <= 50;
```

<br/>

## **General challenge 1**

How many **payment transactions** where **greater than $5.00**?

```sql
SELECT 
  COUNT(amount)
FROM payment 
  WHERE amount > 5.00;
```

How many **actors have a first name that starts with the latter P**?

```sql
SELECT 
  COUNT(first_name)
FROM actor
  WHERE first_name LIKE 'P%';
```

How many **unique districts are our customers from**?

```sql
SELECT 
  COUNT(DISTINCT(district))
FROM address;
```

Retrieve the **list of names for those distinct districts** from the previous question.

```sql
SELECT 
  DISTINCT(district)
FROM address;
```

How many **films have a rating of R** and a **replacement cost between $5 and $15**?

```sql
SELECT 
  COUNT(title)
FROM film
  WHERE rating = 'R'
  AND replacement_cost BETWEEN 5.00 AND 15.00;
```

How many **films have the word Truman somewhere in the title**?

```sql
SELECT 
  COUNT(title)
FROM film
  WHERE title LIKE '%Truman%';
```

<br/>

[**Home**](../README.md) |====| [**==>>**](./challenges_section_3.md)