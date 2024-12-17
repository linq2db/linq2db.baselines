BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `c_1`
			WHERE
				`c_1`.`Value1` IS NULL
		)
			THEN 1
		ELSE 0
	END as `c1`

