-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`
FROM
	`ValueConversion` `t`
WHERE
	`t`.`Value2` IS NULL

