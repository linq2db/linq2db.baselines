-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	ROW_NUMBER() OVER ()
FROM
	`WindowFunctionTestEntity` `t`

