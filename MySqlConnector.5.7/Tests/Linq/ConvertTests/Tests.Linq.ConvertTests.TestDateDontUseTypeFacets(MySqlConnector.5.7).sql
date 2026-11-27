-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`g_2`.`Date_1`,
	COUNT(*)
FROM
	(
		SELECT
			Date(`g_1`.`CreatedOnUtc`) as `Date_1`
		FROM
			`DateTimePrecisionTable` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Date_1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`CreatedOnUtc`
FROM
	`DateTimePrecisionTable` `t1`

