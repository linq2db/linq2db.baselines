BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval 5 Day) as Date)
FROM
	`LinqDataTypes` `t`

