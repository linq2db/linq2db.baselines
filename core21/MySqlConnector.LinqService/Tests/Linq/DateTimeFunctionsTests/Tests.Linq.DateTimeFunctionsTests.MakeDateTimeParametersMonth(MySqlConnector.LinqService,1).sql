BeforeExecute
-- MySqlConnector MySql
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-', @p1, '-1') as Date)
FROM
	`LinqDataTypes` `t`

