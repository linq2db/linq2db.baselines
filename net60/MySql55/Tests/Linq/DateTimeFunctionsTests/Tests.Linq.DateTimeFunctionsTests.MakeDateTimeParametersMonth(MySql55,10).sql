BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-', @p_1, '-1') as Date)
FROM
	`LinqDataTypes` `t`

