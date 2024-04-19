BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t2`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID`
			FROM
				`Child` `t1`
			LIMIT 1
		) `t2` ON 1=1

