-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	1000 - Coalesce((
		SELECT
			SUM(`i`.`IntValue`)
		FROM
			`Inner` `i`
		WHERE
			`i`.`Group` = `o`.`Group`
	), 0)
FROM
	`Outer` `o`
WHERE
	`o`.`Id` = 2
LIMIT 1

