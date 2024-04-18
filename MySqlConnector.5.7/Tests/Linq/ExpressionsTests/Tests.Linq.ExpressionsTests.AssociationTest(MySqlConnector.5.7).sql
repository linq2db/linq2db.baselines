BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_2`.`ParentID`,
	`c_2`.`ChildID`,
	`c_2`.`GrandChildID`
FROM
	`Parent` `cp`
		INNER JOIN `Child` `c_1` ON `cp`.`ParentID` = `c_1`.`ParentID`
		INNER JOIN `GrandChild` `c_2` ON `c_1`.`ParentID` = `c_2`.`ParentID` AND `c_1`.`ChildID` = `c_2`.`ChildID`

