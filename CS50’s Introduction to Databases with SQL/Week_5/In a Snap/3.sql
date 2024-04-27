WITH message_counts AS (
  SELECT
    to_user_id,
    COUNT(*) AS message_count
  FROM
    messages
    INNER JOIN users ON messages.to_user_id = users.id
  WHERE
    from_user_id = (SELECT id FROM users WHERE username = 'creativewisdom377')
  GROUP BY
    to_user_id
  ORDER BY
    message_count DESC
  LIMIT 3
)
SELECT
  id
FROM
  message_counts
  INNER JOIN users ON message_counts.to_user_id = users.id;
