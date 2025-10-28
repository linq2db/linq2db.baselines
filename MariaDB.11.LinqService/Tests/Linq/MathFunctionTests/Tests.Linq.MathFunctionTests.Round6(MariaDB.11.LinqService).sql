BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	ROUND(`t`.`MoneyValue`) <> 0

