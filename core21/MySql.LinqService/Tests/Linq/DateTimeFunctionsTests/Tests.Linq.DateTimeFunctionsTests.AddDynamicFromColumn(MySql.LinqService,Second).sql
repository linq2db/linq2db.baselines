BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Second)
FROM
	`LinqDataTypes` `t`

