BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Floor(Asin(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Asin(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Asin(`p`.`MoneyValue` / 15) * 15) IS NULL)

