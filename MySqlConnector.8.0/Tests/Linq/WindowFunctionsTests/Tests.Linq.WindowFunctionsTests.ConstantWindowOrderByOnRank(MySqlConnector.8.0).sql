-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	RANK() OVER ()
FROM
	`WindowFunctionTestEntity` `t`

