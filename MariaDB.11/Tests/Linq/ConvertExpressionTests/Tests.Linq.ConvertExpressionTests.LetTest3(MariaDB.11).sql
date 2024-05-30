BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		LIMIT 1
	)
FROM
	`Parent` `p`

