BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Floor(Log(`p`.`MoneyValue`))
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Log(`p`.`MoneyValue`)) <> 0.10000000000000001 OR Floor(Log(`p`.`MoneyValue`)) IS NULL)

