BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p VarChar(5) -- String
SET     @p = '2010-'

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from Cast(Concat(@p, Lpad(`t`.`ID`,2,'0'), '-01') as Date)) = 2010

