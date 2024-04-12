BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT 2, 9223372036854775807
	) `t2`

