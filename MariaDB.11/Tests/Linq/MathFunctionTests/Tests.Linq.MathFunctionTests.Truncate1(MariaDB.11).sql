-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Truncate(`p`.`MoneyValue`, 0) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.1

