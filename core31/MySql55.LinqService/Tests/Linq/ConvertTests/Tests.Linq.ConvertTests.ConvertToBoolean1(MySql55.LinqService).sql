BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	CASE
		WHEN `t`.`MoneyValue` <> 0
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`MoneyValue` <> 0

