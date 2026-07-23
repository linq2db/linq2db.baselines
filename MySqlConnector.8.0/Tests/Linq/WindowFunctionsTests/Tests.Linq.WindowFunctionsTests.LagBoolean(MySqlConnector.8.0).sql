-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	LAG(`t`.`IntValue` = 20) OVER (ORDER BY `t`.`Id`),
	LAG(`t`.`IntValue`) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`
ORDER BY
	`t`.`Id`

