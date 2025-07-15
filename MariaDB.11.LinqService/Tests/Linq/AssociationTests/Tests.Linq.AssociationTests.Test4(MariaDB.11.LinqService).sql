BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
WHERE
	`p`.`ParentID` < 4 OR `p`.`ParentID` >= 4

