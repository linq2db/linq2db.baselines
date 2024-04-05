BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`TestИмя` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`testparams` `t`
SET
	`t`.`TestИмя` = 2
WHERE
	`t`.`TestИмя` = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `testparams`

