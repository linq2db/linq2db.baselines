BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Year) as Date)
FROM
	`LinqDataTypes` `t`

