CREATE TABLE IF NOT EXISTS department(
dm_id INT NOT NULL AUTO_INCREMENT,
dm_name VARCHAR(30) NOT NULL,
dm_chairman VARCHAR(50) NOT NULL,
dm_intro VARCHAR(5000) NOT NULL,
dm_img VARCHAR(500) NOT NULL,
PRIMARY KEY (dm_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;