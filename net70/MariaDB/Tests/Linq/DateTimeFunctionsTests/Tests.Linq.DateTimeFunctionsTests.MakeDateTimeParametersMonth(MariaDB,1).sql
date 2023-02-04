BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-', @p_1, '-01') as Date)
FROM
	`LinqDataTypes` `t`

