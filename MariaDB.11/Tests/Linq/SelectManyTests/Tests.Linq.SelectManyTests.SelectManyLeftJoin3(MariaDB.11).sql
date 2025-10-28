BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`,
	`Child` `ch`
WHERE
	`p`.`ParentID` = `ch`.`ParentID`

