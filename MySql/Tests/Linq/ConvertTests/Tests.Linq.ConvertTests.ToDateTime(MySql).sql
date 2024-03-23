BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00')
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from Cast(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') as DATETIME)) > 0

