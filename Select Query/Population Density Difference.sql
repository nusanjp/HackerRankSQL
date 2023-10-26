/*
Query the difference between the maximum and minimum populations in CITY.
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
--Solution

SELECT MAX(Population) - MIN(Population)
FROM CITY;