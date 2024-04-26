BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p_1`.`MoneyValue`
FROM
	(
		SELECT
			`p`.`MoneyValue`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`MoneyValue` > 0

