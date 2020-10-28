BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Floor(Log10(`p`.`MoneyValue`))
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Log10(`p`.`MoneyValue`)) <> 0.10000000000000001 OR Floor(Log10(`p`.`MoneyValue`)) IS NULL)

