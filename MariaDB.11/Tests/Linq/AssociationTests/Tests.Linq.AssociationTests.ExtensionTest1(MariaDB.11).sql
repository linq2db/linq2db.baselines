BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a_Children`.`ParentID`,
	`a_Children`.`ChildID`
FROM
	`Parent` `_`
		INNER JOIN `Child` `a_Children` ON `_`.`ParentID` = `a_Children`.`ParentID`

