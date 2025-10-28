BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `t1`
WHERE
	`t1`.`ParentID` > 0

