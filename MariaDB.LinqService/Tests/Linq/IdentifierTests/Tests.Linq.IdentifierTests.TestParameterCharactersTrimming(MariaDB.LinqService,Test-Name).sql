BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`Test-Name` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = 2
WHERE
	`t`.`Test-Name` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

