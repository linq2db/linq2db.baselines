BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Round(`t`.`MoneyValue`, 0)
FROM
	`LinqDataTypes` `t`
WHERE
	(Round(`t`.`MoneyValue`, 0) <> 0 OR Round(`t`.`MoneyValue`, 0) IS NULL)

