BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 VarChar(2) -- String
SET     @p1 = '10'

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-', @p1, '-1') as Date)
FROM
	`LinqDataTypes` `t`

