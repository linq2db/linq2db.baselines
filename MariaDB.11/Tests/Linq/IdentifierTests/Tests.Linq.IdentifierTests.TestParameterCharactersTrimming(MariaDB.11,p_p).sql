BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`p_p` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p_p Int32
SET     @p_p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`p_p` = @p_p
WHERE
	`t`.`p_p` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

