# **Section 6: Advanced SQL Commands**

<br/>

## **Timestamps and Extract - Challenge**

During which months did payments occur?<br/>
Format your answer to return back the full month name.

```sql
SELECT 
  DISTINCT(TO_CHAR(payment_date, 'MONTH')) AS payment_month
FROM payment;
```

How many payments ocurred on a Monday?

```sql
SELECT 
  COUNT(payment_date)
FROM payment 
  WHERE EXTRACT(DOW FROM payment_date) = 1;
```

<br/>

[**<<==**](./challenges_section_5.md) |====| [**HOME**](../README.md) |====| [**==>>**](./assessment_test_2_section_7.md)