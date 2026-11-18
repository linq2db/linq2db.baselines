-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`g_2`.`K_1`,
	COUNT(*)
FROM
	(
		SELECT
			`j`.`Value1` + 1 as `K_1`
		FROM
			`PartialJoinEntity` `g_1`
				LEFT JOIN `PartialJoinEntity` `j` ON `j`.`Id` = `g_1`.`Id` + 1
	) `g_2`
GROUP BY
	`g_2`.`K_1`
WITH ROLLUP

