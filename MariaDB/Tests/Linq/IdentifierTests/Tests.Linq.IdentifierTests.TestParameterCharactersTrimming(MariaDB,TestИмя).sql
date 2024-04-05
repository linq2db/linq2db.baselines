BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`TestИмя` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`TestИмя` = 2
WHERE
	`t`.`TestИмя` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

