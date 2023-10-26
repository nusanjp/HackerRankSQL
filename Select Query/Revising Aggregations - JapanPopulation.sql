/*
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
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
SELECT SUM(Population)
FROM City
WHERE COUNTRYCODE = 'JPN';