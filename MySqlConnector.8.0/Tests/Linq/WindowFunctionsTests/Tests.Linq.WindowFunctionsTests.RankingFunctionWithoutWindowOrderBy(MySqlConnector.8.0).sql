-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	`t`.`CategoryId`,
	ROW_NUMBER() OVER (PARTITION BY `t`.`CategoryId`)
FROM
	`WindowFunctionTestEntity` `t`

