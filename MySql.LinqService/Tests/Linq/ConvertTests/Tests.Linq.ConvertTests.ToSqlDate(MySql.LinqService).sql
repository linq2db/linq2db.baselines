BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

