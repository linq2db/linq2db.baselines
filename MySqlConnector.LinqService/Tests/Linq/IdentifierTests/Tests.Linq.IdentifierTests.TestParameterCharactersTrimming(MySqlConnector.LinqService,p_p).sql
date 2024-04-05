BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`p_p` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`p_p` = 2
WHERE
	`t`.`p_p` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

