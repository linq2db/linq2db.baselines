BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(Lpad((Extract(year from `p`.`DateTimeValue`) + 1),4,'0'), '-10-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(month from `t`.`c1`) = 10

