BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`child_1`.`ParentID`,
	`child_1`.`ChildID`
FROM
	`Child` `child_1`
WHERE
	`child_1`.`ChildID` = -1

