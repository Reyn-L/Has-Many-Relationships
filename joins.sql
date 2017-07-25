-- SELECT *
-- FROM users;

-- SELECT *
-- FROM posts p
-- INNER JOIN users u
-- ON p.users_id = 100;

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p
-- INNER JOIN users u
-- ON p.users_id = 200;

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
FROM posts p
INNER JOIN users u
ON u.first_name = 'Norene' AND u.last_name = 'Schmitt'