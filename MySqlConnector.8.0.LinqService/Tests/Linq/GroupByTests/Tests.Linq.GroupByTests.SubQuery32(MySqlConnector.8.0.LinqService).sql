BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_2`.`n`,
	SUM(`g_2`.`ParentID`)
FROM
	(
		SELECT
			`g_1`.`ChildID` + 1 as `n`,
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`n`

