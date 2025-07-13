BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`,
	`p`.`GrandChildID`
FROM
	`GrandChild` `p`
		LEFT JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
WHERE
	`a_Child`.`ParentID` = 1 AND `a_Child`.`ChildID` = 11 OR
	`a_Child`.`ParentID` = 2 AND `a_Child`.`ChildID` = 21

