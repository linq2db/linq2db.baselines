BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Degrees(`t`.`MoneyValue`)
FROM
	`LinqDataTypes` `t`
WHERE
	(Degrees(`t`.`MoneyValue`) <> 0.10000000000000001 OR Degrees(`t`.`MoneyValue`) IS NULL)

