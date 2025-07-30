BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
WHERE
	`p`.`ParentID` >= 4

