BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Degrees(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	(Degrees(`p`.`MoneyValue`) <> 0.10000000000000001 OR Degrees(`p`.`MoneyValue`) IS NULL)

