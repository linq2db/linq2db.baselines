-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(`g_1`.`Value`) as `Max_1`
		FROM
			`ScaledDecimalRow` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `t1`
WHERE
	`t1`.`Max_1` IN (1.004)

