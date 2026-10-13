-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL AND `p`.`Value1` > 1
	) as `c1`

