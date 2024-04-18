BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Truncate((-`p`.`MoneyValue`), 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate((-`p`.`MoneyValue`), 0) <> 0.10000000000000001

