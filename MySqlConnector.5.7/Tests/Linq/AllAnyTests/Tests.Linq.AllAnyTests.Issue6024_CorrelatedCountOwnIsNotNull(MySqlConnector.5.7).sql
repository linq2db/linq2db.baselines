-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`GrandChild` `g_1`
		WHERE
			`g_1`.`ParentID` = `p`.`ParentID` AND `g_1`.`ChildID` IS NOT NULL
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

