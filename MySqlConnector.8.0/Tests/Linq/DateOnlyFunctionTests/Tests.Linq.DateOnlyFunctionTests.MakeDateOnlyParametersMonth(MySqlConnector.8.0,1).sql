﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(2) -- String
SET     @p = '01'

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-', @p, '-01') as Date)
FROM
	`LinqDataTypes` `t`

