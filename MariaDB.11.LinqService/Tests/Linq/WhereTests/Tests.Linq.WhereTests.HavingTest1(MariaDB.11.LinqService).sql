BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`
HAVING
	COUNT(*) > 1

