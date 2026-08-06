-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	`t`.`Value`,
	`s`.`c1`
FROM
	`SampleClass` `t`
		INNER JOIN (
			SELECT
				1 as `c1`
		) `s` ON 1 = `t`.`Id`

