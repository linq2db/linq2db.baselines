BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	SUM(`g_1`.`ParentID`)
FROM
	`Child` `g_1`
		LEFT JOIN `Parent` `p` ON `g_1`.`ParentID` = `p`.`ParentID`
GROUP BY
	`g_1`.`ChildID`

