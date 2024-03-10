# **CASE - Challenge Task**

<br/>

Whe want know and compare the various amounts of films whe have per movie rating.

```sql
SELECT 
SUM(CASE rating 
      WHEN 'R' THEN 1
    ELSE 0
    END) AS r,
SUM(CASE rating 
      WHEN 'PG' THEN 1
    ELSE 0
    END) AS pg,
SUM(CASE rating 
      WHEN 'PG-13' THEN 1
    ELSE 0
    END) AS pg13s
FROM film;
```

<br/>

[**<<==**](./assessment_test_3_section_9.md) |====| [**HOME**](../README.md)