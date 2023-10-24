SELECT 
W.id,
WP.age,
W.coins_needed,
W.power
FROM Wands W 
INNER JOIN Wands_Property WP ON W.code = WP.code
WHERE WP.is_evil = 0
AND W.coins_needed =
(
    SELECT MIN(coins_needed)
    FROM Wands x
    INNER JOIN Wands_Property y
    ON x.code = y.code
    WHERE x.power = W.power 
    AND y.age = WP.age
)
ORDER BY W.power DESC,WP.age DESC;