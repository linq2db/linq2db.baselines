BeforeExecute
-- MySql55 MySql

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day))
FROM
	`LinqDataTypes` `t`

