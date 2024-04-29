BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`,
	`g_1`.`GrandChildID`
FROM
	`GrandChild` `g_1`
		LEFT JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`
		LEFT JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`Value1` = 1

