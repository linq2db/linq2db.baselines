BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval Cast(`t`.`SmallIntValue` as Decimal(29, 10)) Month)
FROM
	`LinqDataTypes` `t`

