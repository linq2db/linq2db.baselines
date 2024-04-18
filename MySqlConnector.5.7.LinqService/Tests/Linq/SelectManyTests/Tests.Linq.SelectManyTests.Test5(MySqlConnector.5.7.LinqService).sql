BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`a_Child`.`ParentID`,
			`a_Child`.`ChildID`
		FROM
			`Parent` `p`
				CROSS JOIN `GrandChild` `g_1`
				LEFT JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`
	) `t1`,
	`Parent` `c_1`

