BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

