-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`,
	`Child` `ch`
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

