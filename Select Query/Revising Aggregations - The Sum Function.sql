/*
Query the total population of all cities in CITY where District is California.

Input Format
The CITY table is described as follows:

+---------------+----------------+
| FIELD         |   Type         |
+---------------+----------------+
| ID            | NUMBER         |
| NAME          | VARCHAR2(17)   |
| COUNTRYCODE   | VARCHAR2(3)    |
| DISTRICT      | VARCHAR2(20)   |
| POPULATION    | NUMBER         |
+---------------+----------------+
*/

-- Solution
SELECT Sum(Population)
FROM CITY
WHERE DISTRICT = 'California';