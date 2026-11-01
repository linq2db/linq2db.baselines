-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON (`c_1`.`ParentID`, `c_1`.`ChildID`) = (`p`.`ParentID`, `p`.`ParentID` * 10 + 1) AND `p`.`ParentID` <> 2

