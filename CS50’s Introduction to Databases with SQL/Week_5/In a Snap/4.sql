SELECT u.username
FROM (
  SELECT to_user_id, COUNT(*) as message_count
  FROM messages
  GROUP BY to_user_id
  ORDER BY message_count DESC, (SELECT username FROM users WHERE id = to_user_id) ASC
  LIMIT 1
) AS popular_user_id
JOIN users u ON popular_user_id.to_user_id = u.id;
