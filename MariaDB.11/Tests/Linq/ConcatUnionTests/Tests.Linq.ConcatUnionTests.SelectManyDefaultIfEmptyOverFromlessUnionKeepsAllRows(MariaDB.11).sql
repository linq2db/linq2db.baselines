-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`ParentID`,
	`x`.`X`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				CAST(1 AS SIGNED) as `X`
			UNION ALL
			SELECT
				CAST(2 AS SIGNED) as `X`
		) `x` ON 1=1

