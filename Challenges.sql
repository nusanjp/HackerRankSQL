WITH tbl_num_challenges AS
(
    SELECT
    h.hacker_id,
    h.name,
    COUNT(challenge_id) AS num_challenges
    FROM hackers h 
    JOIN challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id,h.name
), tbl_count_challenges AS
(
    SELECT
    num_challenges,
    COUNT(num_challenges) AS count_challenges
    FROM tbl_num_challenges 
    GROUP BY num_challenges
)
SELECT
tnc.hacker_id,
tnc.name,
tnc.num_challenges
--tcc.count_challenges
FROM tbl_num_challenges tnc 
JOIN tbl_count_challenges tcc 
ON tnc.num_challenges = tcc.num_challenges
WHERE
tcc.count_challenges <=1
OR
tnc.num_challenges = (SELECT MAX(num_challenges) FROM tbl_num_challenges)
ORDER BY tnc.num_challenges DESC, tnc.hacker_id;