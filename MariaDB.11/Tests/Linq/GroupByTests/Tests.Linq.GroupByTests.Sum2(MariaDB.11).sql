-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	SUM(`g_1`.`ChildID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

