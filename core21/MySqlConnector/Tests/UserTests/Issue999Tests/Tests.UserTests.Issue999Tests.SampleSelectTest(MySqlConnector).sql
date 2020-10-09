BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `User`
(
	`city`      VARCHAR(255)     NULL,
	`user_name` VARCHAR(255)     NULL,
	`street`    VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`u`.`city`
FROM
	`User` `u`

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`u`.`street`
FROM
	`User` `u`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `User`

