WITH max_score AS
(
SELECT
    max(score) mscore,
    challenge_id,
    hacker_id
FROM submissions 
GROUP BY challenge_id, hacker_id
)
SELECT
h.hacker_id,
h.name,
SUM(ms.mscore) 
FROM max_score ms
INNER JOIN hackers h ON h.hacker_id = ms.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(ms.mscore) > 0
ORDER BY SUM(ms.mscore) DESC, h.hacker_id ASC;
