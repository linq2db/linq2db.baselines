BeforeExecute
-- MySqlConnector MySql

SELECT
	Floor(Atan2(`p`.`MoneyValue` / 15, 0) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Atan2(`p`.`MoneyValue` / 15, 0) * 15) <> 0.10000000000000001 OR Floor(Atan2(`p`.`MoneyValue` / 15, 0) * 15) IS NULL)

