BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Concat(Cast(Extract(year from `p`.`DateTimeValue`) as CHAR(11)), '-01-01 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from Cast(Concat(Cast(Extract(year from `p`.`DateTimeValue`) as CHAR(11)), '-01-01 00:00:00') as DATETIME)) > 0

