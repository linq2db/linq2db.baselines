BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t`.`c1`
FROM
	( 
		SELECT 
			Cast(Concat(Cast((Extract(year from `p`.`DateTimeValue`) + 1) as CHAR(11)), '-', '10', '-', '1') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(month from `t`.`c1`) = 10

