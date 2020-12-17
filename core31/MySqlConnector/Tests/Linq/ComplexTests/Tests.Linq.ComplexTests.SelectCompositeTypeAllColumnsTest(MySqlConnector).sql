BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(255)     NULL,
	`user_name`       VARCHAR(255)     NULL,
	`street`          VARCHAR(255)     NULL,
	`building_number` INT          NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `User`
(
	`city`,
	`user_name`,
	`street`,
	`building_number`
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`city`,
	`t1`.`user_name`,
	`t1`.`street`,
	`t1`.`building_number`
FROM
	`User` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `User`

