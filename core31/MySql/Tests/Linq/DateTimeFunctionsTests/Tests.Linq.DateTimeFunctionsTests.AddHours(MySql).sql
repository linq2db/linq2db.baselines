BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval 22 Hour))
FROM
	`LinqDataTypes` `t`

