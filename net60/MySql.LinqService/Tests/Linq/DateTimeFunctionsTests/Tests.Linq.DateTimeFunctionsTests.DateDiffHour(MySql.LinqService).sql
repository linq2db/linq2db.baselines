BeforeExecute
-- MySql MySql.Official MySql

SELECT
	TIMESTAMPDIFF(hour, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval 100 Hour))
FROM
	`LinqDataTypes` `t`

