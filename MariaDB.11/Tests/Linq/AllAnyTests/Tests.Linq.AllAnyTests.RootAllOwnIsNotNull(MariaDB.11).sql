-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL AND `p`.`Value1` <= 0
	) as `c1`

