BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			Cast(Floor(`t`.`MoneyValue`) as UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

