BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `ch`
WHERE
	`p`.`ParentID` = `ch`.`ParentID`

