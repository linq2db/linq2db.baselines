BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t1`
	) as `c1`

