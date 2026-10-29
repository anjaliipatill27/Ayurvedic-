CREATE DATABASE ayurclassify;

USE ayurclassify;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE classification_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    vata_score INT DEFAULT 0,
    pitta_score INT DEFAULT 0,
    kapha_score INT DEFAULT 0,
    result_category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


ALTER TABLE users
ADD COLUMN password_hash VARCHAR(255) NOT NULL;



ALTER TABLE users
DROP COLUMN password;

DESCRIBE users;

select * from users;




SELECT * FROM classification_results
ORDER BY id DESC;