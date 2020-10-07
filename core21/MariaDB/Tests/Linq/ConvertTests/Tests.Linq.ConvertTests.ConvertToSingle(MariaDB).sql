BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			`t`.`MoneyValue` as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

