BeforeExecute
-- MySql MySql.Official MySql

SELECT
	CAST(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

