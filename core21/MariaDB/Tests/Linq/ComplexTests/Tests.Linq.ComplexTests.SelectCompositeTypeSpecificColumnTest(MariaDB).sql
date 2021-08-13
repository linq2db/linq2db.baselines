BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `User`
(
	`city`            VARCHAR(255)     NULL,
	`user_name`       VARCHAR(255)     NULL,
	`street`          VARCHAR(255)     NULL,
	`building_number` INT          NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`u`.`city`
FROM
	`User` `u`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`u`.`street`
FROM
	`User` `u`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `User`

