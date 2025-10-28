BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT 2, 5
	) `t2`

