BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval 11 Year) as Date)
FROM
	`LinqDataTypes` `t`

