BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p VarChar(2) -- String
SET     @p = '10'

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-', @p, '-01') as Date)
FROM
	`LinqDataTypes` `t`

