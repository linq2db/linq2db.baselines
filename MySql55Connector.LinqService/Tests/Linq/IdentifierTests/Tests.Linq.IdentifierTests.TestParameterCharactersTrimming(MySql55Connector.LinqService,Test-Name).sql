BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`Test-Name` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

