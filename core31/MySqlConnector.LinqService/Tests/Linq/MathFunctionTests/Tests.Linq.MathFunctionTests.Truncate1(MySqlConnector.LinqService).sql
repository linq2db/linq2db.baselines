BeforeExecute
-- MySqlConnector MySql

SELECT
	Truncate(`p`.`MoneyValue`, 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate(`p`.`MoneyValue`, 0) <> 0.1

