BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`d`.`c1`
FROM
	( 
		SELECT 
			Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-02-24 00:00:00') as DATETIME) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `d`
WHERE
	Extract(day from `d`.`c1`) > 0

