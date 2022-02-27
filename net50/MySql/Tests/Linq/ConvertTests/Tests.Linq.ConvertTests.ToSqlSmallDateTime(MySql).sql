BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(100)), '-01-01 00:20:00') as DateTime)
FROM
	`LinqDataTypes` `t`

