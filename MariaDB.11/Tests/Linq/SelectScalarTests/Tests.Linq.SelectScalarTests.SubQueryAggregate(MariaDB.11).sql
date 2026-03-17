-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `t1`
	) as `Parents`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t2`
	) as `Children`

