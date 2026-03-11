-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`CreatedOnUtc`
FROM
	`Issue5390Table` `t1`

