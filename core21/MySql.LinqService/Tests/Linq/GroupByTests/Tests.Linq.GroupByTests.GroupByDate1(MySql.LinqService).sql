BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Sum(`t1`.`MoneyValue`), 
	`t1`.`c2`, 
	`t1`.`c1`
FROM
	( 
		SELECT 
			Extract(month from `selectParam`.`DateTimeValue`) as `c1`, 
			Extract(year from `selectParam`.`DateTimeValue`) as `c2`, 
			`selectParam`.`MoneyValue`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`c1`,
	`t1`.`c2`

