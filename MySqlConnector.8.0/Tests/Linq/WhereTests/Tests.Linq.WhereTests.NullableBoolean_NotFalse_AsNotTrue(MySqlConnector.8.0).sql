BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NullableBool`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NullableBool`
(
	`ID`   INT     NOT NULL,
	`Bool` BOOLEAN     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`Bool`
FROM
	`NullableBool` `r`
WHERE
	`r`.`Bool` = 1 OR `r`.`Bool` IS NULL

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NullableBool`

