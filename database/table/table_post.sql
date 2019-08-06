CREATE TABLE IF NOT EXISTS post(
post_id INT NOT NULL AUTO_INCREMENT,
user_id VARCHAR(20) NULL,
post_title VARCHAR(100) NOT NULL,
post_content VARCHAR(10000) NOT NULL,
post_view INT NOT NULL DEFAULT 0,
post_date DATETIME NOT NULL DEFAULT NOW(),
post_anony TINYINT NOT NULL DEFAULT 0,
post_secret TINYINT NOT NULL DEFAULT 0,
post_url_link VARCHAR(1000) NULL DEFAULT NULL,
post_url_img VARCHAR(1000) NULL DEFAULT NULL,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;