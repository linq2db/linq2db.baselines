BeforeExecute
-- MySqlConnector MySql

SELECT
	Floor(Degrees(`p`.`MoneyValue`))
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Degrees(`p`.`MoneyValue`)) <> 0.1 OR Floor(Degrees(`p`.`MoneyValue`)) IS NULL)

