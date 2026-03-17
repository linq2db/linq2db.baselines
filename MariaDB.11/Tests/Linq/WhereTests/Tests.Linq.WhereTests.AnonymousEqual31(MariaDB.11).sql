-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` = 2 AND `ch`.`ChildID` = 21

