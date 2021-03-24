BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval Cast(`t`.`SmallIntValue` as Decimal(29, 10)) Day)
FROM
	`LinqDataTypes` `t`

