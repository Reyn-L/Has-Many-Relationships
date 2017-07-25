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

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p
-- INNER JOIN users u
-- ON u.first_name = 'Norene' AND u.last_name = 'Schmitt';

-- SELECT u.username
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- WHERE p.created_at > '20150101';

-- SELECT p.title, p.content, u.username
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- WHERE u.created_at < '20150101';

-- SELECT *, p.title "Post Title"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id;

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE p.created_at < '20150101';

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE p.created_at > '20150101';

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%USB%';

-- SELECT p.title "post_title", u.first_name, u.last_name, c.body
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- INNER JOIN comments c
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%matrix%';

-- SELECT u.first_name, u.last_name, c.body "comment_body"
-- FROM users u
-- INNER JOIN comments c
-- ON u.id = c.users_id
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';

SELECT u.first_name "post_author_first_name", u.last_name "post_author_last_name", p.title "post_title", u.username "comment_author_username", c.body "comment_body"
FROM posts p
INNER JOIN comments c
ON p.id = c.posts_id
INNER JOIN users u
ON u.id = p.users_id
INNER JOIN users uc
ON uc.id = c.users_id
WHERE c.body LIKE '%SSL%' OR c.body LIKE '%firewall%' AND p.content LIKE '%nemo%';

-- SELECT p.id, p.title, u.id
-- FROM posts p
-- INNER JOIN users u
-- ON u.id = p.users_id
-- INNER JOIN comments c
-- ON p.id = c.posts_id
-- WHERE c.body LIKE ';