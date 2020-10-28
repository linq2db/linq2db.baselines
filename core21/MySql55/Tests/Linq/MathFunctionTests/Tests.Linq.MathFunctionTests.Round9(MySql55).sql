BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Round(`p`.`MoneyValue`, 1)
FROM
	`LinqDataTypes` `p`
WHERE
	Round(`p`.`MoneyValue`, 1) <> 0

