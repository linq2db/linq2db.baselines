-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`
FROM
	`ValueConversion` `t`
WHERE
	`t`.`Value2` IS NULL

