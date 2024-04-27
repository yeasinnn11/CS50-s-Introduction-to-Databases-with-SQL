SELECT city, COUNT(name) FROM schools
WHERE type="Public School"
GROUP BY city ORDER BY COUNT(name) DESC, city
LIMIT 10;
