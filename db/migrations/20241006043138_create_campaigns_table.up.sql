CREATE TABLE campaigns(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NULL,
    name VARCHAR(255) NULL,
    short_description VARCHAR(255) NULL,
    description TEXT NULL,
    perks TEXT NULL,
    backer_count INT NULL,
    goal_amount INT NULL,
    current_amount INT NULL,
    slug VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE = InnoDB;