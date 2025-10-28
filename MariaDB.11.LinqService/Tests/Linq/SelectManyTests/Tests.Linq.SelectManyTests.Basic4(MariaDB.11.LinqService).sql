BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `t1` ON `p`.`ParentID` = `t1`.`ParentID` + 1

