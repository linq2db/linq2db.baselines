BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t`.`MoneyValue`
FROM
	(
		SELECT
			ROUND(`p`.`MoneyValue`, 1) as `c1`,
			`p`.`MoneyValue`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0 AND `t`.`c1` <> 7

