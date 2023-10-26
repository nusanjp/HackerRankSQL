/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

+---------------+----------------+
| FIELD         |   Type         |
+---------------+----------------+
| ID            | NUMBER         |
| NAME          | VARCHAR2(17)   |
| COUNTRYCODE   | VARCHAR2(3)    |
| DISTRICT      | VARCHAR2(20)   |
| POPULATION    | NUMBER         |
+---------------+----------------+


+-----------------+----------------+
| FIELD           |   Type         |
+-----------------+----------------+
| CODE            | VARCHAR2(3)    |
| NAME            | VARCHAR2(14)   |
| CONTINENT       | VARCHAR2(13)   |
| REGION          | VARCHAR2(25)   |
| SURFACEAREA     | NUMBER         |
| INDEPYEAR       | VARCHAR2(5)    |
| POPULATION      | NUMBER         |
| LIFEEXPECTEANCY | VARCHAR2(4)    |
| GNP             | NUMBER         |
| GNPOLD          | VARCHAR2(9)    |
| LOCALNAME       | VARCHAR2(44)   |
| GOVERNMENTFORM  | VARCHAR2(44)   |
| HEADOFSTATE     | VARCHAR2(32)   |
| CAPITAL         | VARCHAR2(4)    |
| CODE2           | VARCHAR2(2)    |
+-----------------+----------------+

*/

--Solution
SELECT 
    c1.NAME 
FROM CITY c1
JOIN COUNTRY c2 ON c1.COUNTRYCODE = c2.CODE
WHERE c2.CONTINENT = 'Africa';