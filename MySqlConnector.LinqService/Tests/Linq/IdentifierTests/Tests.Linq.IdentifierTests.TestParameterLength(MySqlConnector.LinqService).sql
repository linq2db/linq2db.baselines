BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`col1`    INT NOT NULL,
	`Column1` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`col1` = 2
WHERE
	`t`.`Column1` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

