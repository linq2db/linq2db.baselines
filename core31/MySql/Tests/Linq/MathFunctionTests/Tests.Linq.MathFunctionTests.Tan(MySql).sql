BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Floor(Tan(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Tan(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Tan(`p`.`MoneyValue` / 15) * 15) IS NULL)

