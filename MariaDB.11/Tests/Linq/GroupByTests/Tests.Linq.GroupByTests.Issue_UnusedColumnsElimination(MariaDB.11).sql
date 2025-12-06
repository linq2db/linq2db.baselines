-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Person` `r`
		GROUP BY
			`r`.`PersonID`,
			`r`.`PersonID`
	) `t1`

