BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p VarChar(5) -- String
SET     @p = '2010-'

SELECT
	`t_1`.`ID`
FROM
	(
		SELECT
			Extract(year from Cast(Concat(@p, Lpad(`t`.`ID`,2,'0'), '-01') as Date)) as `Year_1`,
			`t`.`ID`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`Year_1` = 2010

