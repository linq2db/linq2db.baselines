BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`from` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`from` = 2
WHERE
	`t`.`from` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

