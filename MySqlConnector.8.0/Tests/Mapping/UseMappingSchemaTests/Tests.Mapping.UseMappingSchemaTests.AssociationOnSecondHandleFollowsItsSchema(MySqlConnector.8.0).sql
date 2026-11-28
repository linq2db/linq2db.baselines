-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`c_1`.`ChildID`,
	`a_Parent`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
ORDER BY
	`c_1`.`ChildID`

