/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places.
Input Format

The STATION table is described as follows:Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

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
SELECT ROUND(LONG_W,4) FROM
(SELECT LONG_W, MAX(LAT_N)
FROM Station
GROUP BY LONG_W
HAVING MAX(LAT_N) < 137.2345
ORDER BY MAX(LAT_N) DESC)
WHERE ROWNUM = 1;