BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(Lpad(Extract(year from `p`.`DateTimeValue`),4,'0'), '-10-01 20:35:44') as DateTime) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(month from `t`.`c1`) = 10

