BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`col1`    INT NOT NULL,
	`Column1` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @A123456789b123456789c123456789d123456789e123456789 Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	`testparams` `t`
SET
	`t`.`col1` = @A123456789b123456789c123456789d123456789e123456789
WHERE
	`t`.`Column1` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

