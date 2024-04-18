BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN `t`.`MoneyValue` <> 0
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `t`
WHERE
	(`t`.`MoneyValue` <> 0)

