BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat('2010-', Lpad(`p`.`ID`,2,'0'), '-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

