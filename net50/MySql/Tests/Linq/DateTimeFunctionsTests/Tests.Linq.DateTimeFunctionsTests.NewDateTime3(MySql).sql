BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(Cast(Extract(year from `p`.`DateTimeValue`) as CHAR(11)), '-10-1 20:35:44') as DateTime) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(month from `t`.`c1`) = 10

