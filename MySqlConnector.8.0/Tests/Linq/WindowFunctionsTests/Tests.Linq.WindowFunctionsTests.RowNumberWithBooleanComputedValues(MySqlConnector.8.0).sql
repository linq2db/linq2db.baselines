-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`x`.`Id`,
	ROW_NUMBER() OVER (ORDER BY `x`.`IntValue` = 20, `x`.`Id`),
	ROW_NUMBER() OVER (PARTITION BY `x`.`IntValue` = 20 ORDER BY `x`.`Id`)
FROM
	`WindowFunctionTestEntity` `x`
ORDER BY
	`x`.`Id`

