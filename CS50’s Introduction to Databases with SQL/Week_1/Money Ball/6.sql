SELECT name,SUM(H)AS "Total Hits" FROM teams
JOIN performances ON performances.team_id=teams.id
WHERE performances.year=2001
GROUP BY performances.team_id
ORDER BY "Total Hits" DESC
LIMIT 5;
