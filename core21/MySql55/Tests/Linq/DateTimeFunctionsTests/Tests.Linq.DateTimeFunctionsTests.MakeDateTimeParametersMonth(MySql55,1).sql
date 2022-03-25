BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 VarChar(1) -- String
SET     @p_1 = '1'

SELECT
	Cast(Concat(CASE
		WHEN 2010 + `t`.`ID` IS NULL
			THEN ''
		ELSE Cast((2010 + `t`.`ID`) as CHAR(11))
	END, '-', @p_1, '-1') as Date)
FROM
	`LinqDataTypes` `t`

