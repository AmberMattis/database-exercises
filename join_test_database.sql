USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('charlie', 'charlienchoco@example.com', '2'),
('rex','trex@rxample.com','2'),
('renee','renee@example.com', '2'),
('ana','ana@example.com', null);

SELECT * FROM users;


SELECT users.name as full_name, roles.name as role_name
FROM roles
JOIN users ON roles.id = users.role_id;

SELECT users.name as full_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.id = users.role_id;

SELECT users.name as full_name, roles.name as role_name
FROM roles
RIGHT JOIN users ON users.id = users.role_id;

# count the number of people in each profession
SELECT COUNT(users.role_id), roles.name
FROM roles
JOIN users ON roles.id = users.role_id;


