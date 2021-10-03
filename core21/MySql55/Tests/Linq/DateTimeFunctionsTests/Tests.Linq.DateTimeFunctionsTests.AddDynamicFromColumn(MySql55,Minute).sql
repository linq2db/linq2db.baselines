BeforeExecute
-- MySql55 MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Minute)
FROM
	`LinqDataTypes` `t`

