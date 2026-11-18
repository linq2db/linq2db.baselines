-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY `t`.`Id`),
	ROW_NUMBER() OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

