BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`s_1`.`c1`
FROM
	`SampleClass` `t`
		INNER JOIN LATERAL (
			SELECT
				`s`.`c1`
			FROM
				(
					SELECT
						1 as `c1`
					WHERE
						1 = `t`.`Id`
				) `s`
		) `s_1` ON 1=1

