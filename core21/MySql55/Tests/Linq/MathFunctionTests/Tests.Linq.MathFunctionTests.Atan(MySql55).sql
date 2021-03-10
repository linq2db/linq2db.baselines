BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Floor(Atan(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Atan(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Atan(`p`.`MoneyValue` / 15) * 15) IS NULL)

