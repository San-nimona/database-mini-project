CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

INSERT INTO users (name,email) VALUES ('Alice','alice@example.com'),('Bob','bob@example.com');

DELIMITER $$
CREATE PROCEDURE get_user_count()
BEGIN
  SELECT COUNT(*) AS cnt FROM users;
END $$
$$
DELIMITER ;

