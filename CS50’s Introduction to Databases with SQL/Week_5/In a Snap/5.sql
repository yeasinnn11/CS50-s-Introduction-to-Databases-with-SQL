WITH lovelytrust_friends AS (
  SELECT friend_id
  FROM friends
  WHERE user_id = (SELECT id FROM users WHERE username = 'lovelytrust487')
),
exceptionalinspiration_friends AS (
  SELECT friend_id
  FROM friends
  WHERE user_id = (SELECT id FROM users WHERE username = 'exceptionalinspiration482')
)
SELECT f1.friend_id
FROM lovelytrust_friends AS f1
INNER JOIN exceptionalinspiration_friends AS f2 ON f1.friend_id = f2.friend_id;
