BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ChildID`,
	`a_ParentID2`.`ParentID`,
	`a_ParentID2`.`Value1`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `a_ParentID2` ON `c_1`.`ParentID` = `a_ParentID2`.`ParentID`

