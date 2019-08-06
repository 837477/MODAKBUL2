CREATE TABLE IF NOT EXISTS vote(
vote_id INT NOT NULL AUTO_INCREMENT,
user_id VARCHAR(20) NULL,
vote_title VARCHAR(100) NOT NULL,
vote_content VARCHAR(10000) NOT NULL,
start_date DATETIME NOT NULL DEFAULT NOW(),
end_date DATETIME NOT NULL,
vote_file_path VARCHAR(500) NOT NULL,
PRIMARY KEY(vote_id),
FOREIGN KEY(user_id) REFERENCES user(user_id) ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;