BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`Bool`
FROM
	`NullableBool` `r`
WHERE
	`r`.`Bool` = 1 OR `r`.`Bool` IS NULL

