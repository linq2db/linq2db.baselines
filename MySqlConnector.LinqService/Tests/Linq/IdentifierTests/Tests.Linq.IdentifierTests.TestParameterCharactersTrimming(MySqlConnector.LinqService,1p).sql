BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`1p` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`1p` = 2
WHERE
	`t`.`1p` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

