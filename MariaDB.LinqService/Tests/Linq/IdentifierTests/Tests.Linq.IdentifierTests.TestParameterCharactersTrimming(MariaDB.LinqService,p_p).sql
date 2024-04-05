BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`p_p` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`p_p` = 2
WHERE
	`t`.`p_p` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

