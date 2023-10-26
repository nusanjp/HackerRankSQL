/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880. 
Round your answer to 4 decimal places.

Input Format

The STATION table is described as follows:
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
*/
--Solution
SELECT 
    ROUND(MIN(LAT_N),4)
FROM Station
WHERE LAT_N > 38.7780;