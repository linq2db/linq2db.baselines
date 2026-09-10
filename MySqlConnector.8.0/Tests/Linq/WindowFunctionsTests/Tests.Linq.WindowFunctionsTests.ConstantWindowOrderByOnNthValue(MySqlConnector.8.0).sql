-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	NTH_VALUE(`t`.`IntValue`, 2) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

