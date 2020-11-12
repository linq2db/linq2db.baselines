BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Cast(Concat(Cast((Extract(year from `t`.`DateTimeValue`) + 1) as CHAR(11)), '-10-1') as Date)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(month from Cast(Concat(Cast((Extract(year from `t`.`DateTimeValue`) + 1) as CHAR(11)), '-10-1') as Date)) = 10

