BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`_p` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int32
SET     @p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`_p` = @p
WHERE
	`t`.`_p` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

