BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON 1=1
WHERE
	`p`.`ParentID` = `ch`.`ParentID` AND `ch`.`ParentID` IS NOT NULL

