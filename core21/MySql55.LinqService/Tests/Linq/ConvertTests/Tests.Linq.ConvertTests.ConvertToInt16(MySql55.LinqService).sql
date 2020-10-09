BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			Cast(Floor(CASE
				WHEN `t`.`MoneyValue` - Floor(`t`.`MoneyValue`) = 0.5 AND Floor(`t`.`MoneyValue`) % 2 = 0
					THEN Floor(`t`.`MoneyValue`)
				ELSE Round(`t`.`MoneyValue`, 0)
			END) as SIGNED) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

