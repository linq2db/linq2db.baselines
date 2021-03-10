BeforeExecute
-- MySqlConnector MySql

SELECT
	Floor(((Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15))) / 2) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(((Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15))) / 2) * 15) <> 0.10000000000000001 OR Floor(((Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15))) / 2) * 15) IS NULL)

