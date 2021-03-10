BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Cast(Concat(Cast((Extract(year from `p`.`DateTimeValue`) + 1) as CHAR(11)), '-10-1') as Date)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(month from Cast(Concat(Cast((Extract(year from `p`.`DateTimeValue`) + 1) as CHAR(11)), '-10-1') as Date)) = 10

