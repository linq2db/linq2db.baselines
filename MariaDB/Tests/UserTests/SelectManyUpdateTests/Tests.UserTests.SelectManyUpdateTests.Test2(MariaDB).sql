BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Child` `a_Children`,
	`Parent` `x`
		INNER JOIN `Child` `a_Children_1` ON `x`.`ParentID` = `a_Children_1`.`ParentID`
SET
	`a_Children`.`ChildID` = 10
WHERE
	1 = 0 AND `a_Children_1`.`ParentID` = `a_Children`.`ChildID`

