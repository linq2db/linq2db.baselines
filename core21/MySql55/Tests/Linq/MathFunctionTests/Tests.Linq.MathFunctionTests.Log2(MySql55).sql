BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t`.`c1`
FROM
	( 
		SELECT 
			Floor(Log(2, `p`.`MoneyValue`)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.10000000000000001

