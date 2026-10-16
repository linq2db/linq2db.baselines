-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Code`
FROM
	(
		SELECT
			`r`.`Id`,
			`r`.`Code`
		FROM
			`Issue6052RowA` `r`
		UNION
		SELECT
			`r_1`.`Id`,
			`r_1`.`Code`
		FROM
			`Issue6052RowB` `r_1`
	) `t1`
ORDER BY
	`t1`.`Id`

