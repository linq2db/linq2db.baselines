BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

