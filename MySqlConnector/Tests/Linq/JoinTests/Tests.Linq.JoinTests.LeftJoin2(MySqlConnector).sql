BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`lj1`.`ParentID`,
	`lj1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `lj1` ON `p`.`ParentID` = `lj1`.`ParentID`

