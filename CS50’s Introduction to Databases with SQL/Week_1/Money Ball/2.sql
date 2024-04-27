SELECT salary,year FROM salaries
WHERE player_id =(
    SELECT id FROM players
    WHERE first_name LIKE "Cal" AND last_name LIKE "Ripken%"
)ORDER BY year DESC;
