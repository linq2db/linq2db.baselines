BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-01-01 00:00:00') as DATETIME) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	Extract(day from `p`.`c1`) > 0

