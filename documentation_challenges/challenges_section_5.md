# **Section 5: JOINS**

<br/>

## **JOIN Challenge Tasks**

California sales tax laws have changed and we need to alert our customers to this through email. **What are the emails of the customers who live in California**?

```sql
SELECT 
  address.district,
  customer.email
FROM customer 
JOIN address ON customer.address_id = address.address_id
    WHERE address.district = 'California';
```
A customer walks in and is a huge fan of the actor "Nick Wahlberg" and wants to know which movies he is in. **Get a list of all the movies "Nick Wahlberg" has been in**.

```sql
SELECT 
  film.title,
  actor.first_name,
  actor.last_name
FROM film_actor 
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
  WHERE actor.first_name = 'Nick'
  AND actor.last_name = 'Wahlberg';
```

<br/>

[**<<==**](./assessment_test_1_section_4.md) |====| [**HOME**](../README.md) |====| [**==>>**](./challenges_section_6.md)