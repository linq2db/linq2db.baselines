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
DECLARE @from Int32
SET     @from = 2

UPDATE
	`testparams` `t`
SET
	`t`.`from` = @from
WHERE
	`t`.`from` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

