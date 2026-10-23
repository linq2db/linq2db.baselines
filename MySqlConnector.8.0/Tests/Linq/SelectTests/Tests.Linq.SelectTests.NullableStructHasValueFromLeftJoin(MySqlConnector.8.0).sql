-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `p`.`ParentID`
WHERE
	`p`.`ParentID` = 5

