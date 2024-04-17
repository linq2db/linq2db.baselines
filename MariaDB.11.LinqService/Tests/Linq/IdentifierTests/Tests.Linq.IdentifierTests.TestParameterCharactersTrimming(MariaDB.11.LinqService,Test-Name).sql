BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`Test-Name` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

