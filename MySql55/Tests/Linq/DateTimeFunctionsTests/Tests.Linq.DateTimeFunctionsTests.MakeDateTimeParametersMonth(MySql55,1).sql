BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p VarChar(2) -- String
SET     @p = '01'

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-', @p, '-01') as Date)
FROM
	`LinqDataTypes` `t`

