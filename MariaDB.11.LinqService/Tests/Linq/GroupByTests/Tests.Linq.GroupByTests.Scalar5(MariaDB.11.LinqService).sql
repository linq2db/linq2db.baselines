BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	MAX(`g_1`.`ParentID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

