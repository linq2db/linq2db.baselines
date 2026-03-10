-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`pmp1`.`ChildID`
FROM
	`Child` `pmp1`
		CROSS JOIN (
			SELECT DISTINCT
				`g_1`.`ParentID`
			FROM
				`Child` `g_1`
		) `pmp`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

