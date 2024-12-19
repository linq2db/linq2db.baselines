BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Parent` `p`
		)
			THEN 1
		ELSE 0
	END as `c1`

