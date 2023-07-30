BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`Test-Name` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

