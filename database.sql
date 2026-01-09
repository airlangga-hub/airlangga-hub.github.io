-- DDL
CREATE DATABASE IF NOT EXISTS airlangga_db;

USE airlangga_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- register
INSERT INTO users
(first_name, last_name, email, password)
VALUES
(?, ?, ?, ?);

-- login
SELECT
    id,
    first_name,
    last_name,
    password
FROM users
WHERE
    email = ?;