BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Floor(Cos(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Cos(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Cos(`p`.`MoneyValue` / 15) * 15) IS NULL)

