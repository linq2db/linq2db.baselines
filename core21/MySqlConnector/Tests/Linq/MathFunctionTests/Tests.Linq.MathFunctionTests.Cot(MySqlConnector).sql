BeforeExecute
-- MySqlConnector MySql

SELECT
	Floor(Cot(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Cot(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Cot(`p`.`MoneyValue` / 15) * 15) IS NULL)

