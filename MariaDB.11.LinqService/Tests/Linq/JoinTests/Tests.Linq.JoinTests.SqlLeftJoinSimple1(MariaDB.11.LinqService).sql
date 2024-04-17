BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`r`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `r` ON `p`.`ParentID` = `r`.`ParentID`

