BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p VarChar(5) -- String
SET     @p = '2010-'

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(@p, Lpad(`p`.`ID`,2,'0'), '-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

