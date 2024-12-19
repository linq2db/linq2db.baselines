BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NullableBool`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `NullableBool`
(
	`ID`   INT     NOT NULL,
	`Bool` BOOLEAN     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Bool`
FROM
	`NullableBool` `r`
WHERE
	`r`.`Bool` = 1 OR `r`.`Bool` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NullableBool`

