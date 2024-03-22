BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval 3 Day) as Date)
FROM
	`LinqDataTypes` `t`

