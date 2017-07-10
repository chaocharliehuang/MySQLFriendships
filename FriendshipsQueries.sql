# populate users with fake data

INSERT INTO users (first_name, last_name)
VALUES ('Chris', 'Baker'), ('Diana', 'Smith'), ('James', 'Johnson'), ('Jessica', 'Davidson');

INSERT INTO friendships(user_id, friend_id)
VALUES (1, 4), (1, 3), (1, 2), (2, 1), (3, 1), (4, 1);

SELECT users.first_name, users.last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name
FROM users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON friendships.friend_id = users2.id
ORDER BY friend_last_name ASC;