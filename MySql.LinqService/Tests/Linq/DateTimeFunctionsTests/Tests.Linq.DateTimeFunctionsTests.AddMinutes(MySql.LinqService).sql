BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval -8 Minute))
FROM
	`LinqDataTypes` `t`

