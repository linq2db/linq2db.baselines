BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`FirstName` VARCHAR(4000)     NULL,
	`Status`    INT               NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`user_1`.`FirstName`,
	`user_1`.`Status`
FROM
	`User` `user_1`
WHERE
	`user_1`.`Status` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

