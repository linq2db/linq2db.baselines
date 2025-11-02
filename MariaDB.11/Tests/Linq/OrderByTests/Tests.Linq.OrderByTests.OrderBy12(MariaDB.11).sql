-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
ORDER BY
	`ch`.`ChildID` % 2 DESC

