-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*),
	MAX(`g_1`.`ChildID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

