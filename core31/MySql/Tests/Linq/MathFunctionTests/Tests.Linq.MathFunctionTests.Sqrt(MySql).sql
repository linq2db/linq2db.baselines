BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Floor(Sqrt(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Sqrt(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Sqrt(`p`.`MoneyValue` / 15) * 15) IS NULL)

