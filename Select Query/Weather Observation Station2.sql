/*
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
Input Format

The STATION table is described as follows:

STATION
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

Output Format

Your results must be in the form:
lat lon

where  is the sum of all values in LAT_N and  is the sum of all values in LONG_W. Both results must be rounded to a scale of  decimal places.

*/
--Solution
SELECT ROUND(SUM(LAT_N),2) , ROUND(SUM(LONG_W),2) FROM Station;