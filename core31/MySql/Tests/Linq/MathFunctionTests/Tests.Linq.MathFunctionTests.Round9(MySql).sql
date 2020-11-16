BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Round(`t`.`MoneyValue`, 1)
FROM
	`LinqDataTypes` `t`
WHERE
	Round(`t`.`MoneyValue`, 1) <> 0

