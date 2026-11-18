-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`g_1`.`ParentID`,
	`g_1`.`Value1`,
	COUNT(*)
FROM
	`Parent` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`Value1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

