BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`MoneyValue`
FROM
	(
		SELECT
			`t`.`MoneyValue`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`MoneyValue` > 0

