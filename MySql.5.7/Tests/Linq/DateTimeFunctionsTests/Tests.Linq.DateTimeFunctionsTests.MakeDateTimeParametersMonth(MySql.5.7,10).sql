BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p VarChar(2) -- String
SET     @p = '10'

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-', @p, '-01') as Date)
FROM
	`LinqDataTypes` `t`

