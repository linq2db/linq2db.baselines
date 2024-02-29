BeforeExecute
-- MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`Value1`
FROM
	`Child` `cp`
		INNER JOIN `Parent` `c_1` ON `cp`.`ParentID` = `c_1`.`ParentID`

