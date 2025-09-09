BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`g_2`.`Key_1`,
	SUM(`g_2`.`Max_1`)
FROM
	(
		SELECT
			`g_1`.`ParentID` as `Key_1`,
			MAX(`g_1`.`Value1`) as `Max_1`
		FROM
			`Parent` `g_1`
		WHERE
			`g_1`.`Value1` IS NOT NULL
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`

