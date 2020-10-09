BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Truncate((-`p`.`MoneyValue`), 0) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.10000000000000001

