-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id` RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	`WindowFunctionTestEntity` `t`

