BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Sum(`t1`.`MoneyValue`), 
	Extract(year from `t1`.`c1`), 
	Extract(month from `t1`.`c1`)
FROM
	( 
		SELECT 
			Cast(Concat(Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(11)), '-', Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(11)), '-', '1') as Date) as `c1`, 
			`selectParam`.`MoneyValue`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`c1`

