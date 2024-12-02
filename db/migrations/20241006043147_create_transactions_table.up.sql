CREATE TABLE transactions(
    id INT NOT NULL AUTO_INCREMENT,
    campaign_id INT NULL,
    user_id INT NULL,
    amount INT NULL,
    status VARCHAR(255) NULL,
    code VARCHAR(255) NULL,
    payment_url VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE = InnoDB;