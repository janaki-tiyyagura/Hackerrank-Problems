WITH CTE AS (SELECT 
CASE WHEN occupation='Doctor' THEN name  END AS Doctor,
CASE WHEN occupation='Professor' THEN name  END AS Professor,
CASE WHEN occupation='Singer' THEN name  END AS Singer,
CASE WHEN occupation='Actor' THEN name  END AS Actor,
ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS num
FROM occupations)
SELECT MIN(Doctor),MIN(Professor),MIN(Singer),MIN(Actor) FROM CTE
GROUP BY num





