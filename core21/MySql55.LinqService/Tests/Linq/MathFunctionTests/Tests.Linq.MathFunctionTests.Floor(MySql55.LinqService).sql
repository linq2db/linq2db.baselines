BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Floor(-(`p`.`MoneyValue` + 1))
FROM
	`LinqDataTypes` `p`
WHERE
	Floor(-(`p`.`MoneyValue` + 1)) <> 0

