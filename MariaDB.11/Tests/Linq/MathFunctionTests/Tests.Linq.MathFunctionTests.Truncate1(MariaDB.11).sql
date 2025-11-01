-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Truncate(`p`.`MoneyValue`, 0) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.1

