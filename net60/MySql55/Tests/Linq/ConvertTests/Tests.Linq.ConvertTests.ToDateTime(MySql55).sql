BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-01-01 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(day from Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-01-01 00:00:00') as DATETIME)) > 0

