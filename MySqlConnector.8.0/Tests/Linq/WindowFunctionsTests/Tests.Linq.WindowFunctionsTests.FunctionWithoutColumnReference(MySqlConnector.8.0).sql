-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(`t`.`IntValue`) OVER () > 0
FROM
	`WindowFunctionTestEntity` `t`

