-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_2`.`Date_1`,
	COUNT(*)
FROM
	(
		SELECT
			Date(`g_1`.`CreatedOnUtc`) as `Date_1`
		FROM
			`Issue5390Table` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Date_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`CreatedOnUtc`
FROM
	`Issue5390Table` `t1`

