-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `c1`
		FROM
			`Person` `t1`
		UNION ALL
		SELECT
			CAST(1 AS SIGNED) as `c1`
		FROM
			`Parent` `t2`
	) `t3`

