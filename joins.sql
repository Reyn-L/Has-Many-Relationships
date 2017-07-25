--Step 1
-- SELECT *
-- FROM users;

--Step 2

-- SELECT *
-- FROM posts p
-- INNER JOIN users u
-- ON p.users_id = 100;

--Step 3

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p
-- INNER JOIN users u
-- ON p.users_id = 200;

--Step 4

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p
-- INNER JOIN users u
-- ON u.first_name = 'Norene' AND u.last_name = 'Schmitt';

--Step 5

-- SELECT u.username
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- WHERE p.created_at > '20150101';

--Step 6

-- SELECT p.title, p.content, u.username
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- WHERE u.created_at < '20150101';

--Step 7

-- SELECT *, p.title "Post Title"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id;

--Step 8

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE p.created_at < '20150101';

--Step 9

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE p.created_at > '20150101';

--Step 10

-- SELECT *, p.title "post_title", p.url "post_url", c.body "comment_body"
-- FROM comments c
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%USB%';

--Step 11

-- SELECT p.title "post_title", u.first_name, u.last_name, c.body
-- FROM users u
-- INNER JOIN posts p
-- ON u.id = p.users_id
-- INNER JOIN comments c
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%matrix%';

--Step 12

-- SELECT u.first_name, u.last_name, c.body "comment_body"
-- FROM users u
-- INNER JOIN comments c
-- ON u.id = c.users_id
-- INNER JOIN posts p
-- ON p.id = c.posts_id
-- WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';

--Step 13

SELECT u.first_name "post_author_first_name", u.last_name "post_author_last_name", p.title "post_title", u.username "comment_author_username", c.body "comment_body"
FROM posts p
INNER JOIN users u
ON u.id = p.users_id
INNER JOIN comments c
ON p.id = c.posts_id
INNER JOIN users uc
ON uc.id = C.users_id
WHERE p.content LIKE '%nemo%' AND (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%');

-- SELECT p.id, p.title, u.id
-- FROM posts p
-- INNER JOIN users u
-- ON u.id = p.users_id
-- INNER JOIN comments c
-- ON p.id = c.posts_id
-- WHERE c.body LIKE ';