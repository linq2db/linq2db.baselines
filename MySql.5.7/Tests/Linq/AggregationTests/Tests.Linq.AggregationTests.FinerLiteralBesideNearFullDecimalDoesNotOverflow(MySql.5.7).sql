-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`ComputedDecimalRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Wide`) = 1.000001
	) `t1`

