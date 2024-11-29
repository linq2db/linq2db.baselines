BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Child` `t1`
		LIMIT 2, 9223372036854775807
	) `t2`

