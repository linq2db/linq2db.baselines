-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

