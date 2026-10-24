-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	NTILE(4) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

