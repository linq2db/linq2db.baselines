-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `x`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `x`.`ParentID`

