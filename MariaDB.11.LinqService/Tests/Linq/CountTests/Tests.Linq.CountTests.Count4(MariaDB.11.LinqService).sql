BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

