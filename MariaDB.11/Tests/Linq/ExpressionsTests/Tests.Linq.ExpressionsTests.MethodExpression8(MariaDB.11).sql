BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Floor(Cast(`ch`.`ChildID` as DOUBLE) / 10)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

