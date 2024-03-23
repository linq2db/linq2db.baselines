BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Quarter) as Date)
FROM
	`LinqDataTypes` `t`

