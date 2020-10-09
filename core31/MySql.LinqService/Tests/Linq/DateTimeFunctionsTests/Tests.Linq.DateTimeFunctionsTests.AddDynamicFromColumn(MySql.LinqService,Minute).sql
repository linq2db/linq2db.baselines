BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Minute)
FROM
	`LinqDataTypes` `t`

