BeforeExecute
-- MySqlConnector MySql

SELECT
	Ceiling(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	Ceiling(`p`.`MoneyValue`) <> 0

