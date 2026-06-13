-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	LEAD(`t`.`IntValue`, 2) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

