
SELECT year,HR FROM performances
WHERE player_id=(
    SELECT id FROM players
    WHERE birth_year=1969 AND first_name LIKE
    "Ken" AND last_name LIKE "Griffey%"
)ORDER BY year DESC;
