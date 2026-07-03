-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	SUM(`t`.`IntValue`) OVER (ORDER BY `t`.`Id` RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	`WindowFunctionTestEntity` `t`

