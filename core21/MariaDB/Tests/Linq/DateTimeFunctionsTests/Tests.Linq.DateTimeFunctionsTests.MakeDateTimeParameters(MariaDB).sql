BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ID VarChar(5) -- String
SET     @ID = '2010-'

SELECT
	Cast(Concat(@ID, Cast(`t`.`ID` as CHAR(11)), '-1') as Date)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from Cast(Concat(@ID, Cast(`t`.`ID` as CHAR(11)), '-1') as Date)) = 2010

