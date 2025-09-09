BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `t1`.`ParentID` = `c_1`.`ParentID`

