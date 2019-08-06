CREATE TABLE IF NOT EXISTS board(
board_url VARCHAR(20) NOT NULL,
board_rank INT NOT NULL DEFAULT 0,
board_name VARCHAR(100) NOT NULL,
board_type TINYINT NOT NULL DEFAULT 0,
PRIMARY KEY(board_url)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;