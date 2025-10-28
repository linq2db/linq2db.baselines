BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` > 3 OR `ch`.`ChildID` < 4
LIMIT 3

