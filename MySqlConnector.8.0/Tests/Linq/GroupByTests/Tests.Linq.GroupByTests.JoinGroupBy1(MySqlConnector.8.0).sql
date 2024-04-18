BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `c_1`
		INNER JOIN `GrandChild` `g_1` ON `c_1`.`ParentID` = `g_1`.`ParentID` AND `c_1`.`ChildID` = `g_1`.`ChildID`
GROUP BY
	`g_1`.`ParentID`

