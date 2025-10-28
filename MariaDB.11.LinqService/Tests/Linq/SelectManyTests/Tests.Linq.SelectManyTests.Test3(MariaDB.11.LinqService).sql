BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `g_1` ON `t1`.`ParentID` = `g_1`.`ParentID`
		CROSS JOIN `Person` `t`

