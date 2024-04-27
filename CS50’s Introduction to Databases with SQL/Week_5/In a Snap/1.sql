SELECT username
FROM users INDEXED BY search_users_by_last_login
WHERE last_login_date >= '2024-01-01';


