BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p_1 VarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(@p_1, Lpad(`p`.`ID`,2,'0'), '-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

