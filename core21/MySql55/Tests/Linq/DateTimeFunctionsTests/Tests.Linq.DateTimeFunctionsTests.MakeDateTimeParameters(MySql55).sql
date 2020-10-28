BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p1 VarChar(5) -- String
SET     @p1 = '2010-'

SELECT
	Cast(Concat(@p1, Cast(`p`.`ID` as CHAR(11)), '-1') as Date)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(year from Cast(Concat(@p1, Cast(`p`.`ID` as CHAR(11)), '-1') as Date)) = 2010

