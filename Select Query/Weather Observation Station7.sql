--Problem STATEMENT
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Write a query to print the list of CITY that ends at vowels in lexicographical order. Do not print duplicates.
*/


--Solution

SELECT DISTINCT City
FROM Station
WHERE city LIKE '%a'
OR city LIKE '%e' 
OR city LIKE '%i'
OR city LIKE '%o' 
OR city LIKE '%u';