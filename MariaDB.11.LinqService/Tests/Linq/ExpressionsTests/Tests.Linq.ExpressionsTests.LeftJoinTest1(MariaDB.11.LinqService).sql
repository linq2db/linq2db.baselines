BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`i`.`ParentID`,
	`i`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `i` ON `t`.`ParentID` = `i`.`ParentID`

