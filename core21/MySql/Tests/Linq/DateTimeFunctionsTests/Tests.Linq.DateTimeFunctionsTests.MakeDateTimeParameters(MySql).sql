BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID VarChar(5) -- String
SET     @ID = '2010-'

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(@ID, Cast(`p`.`ID` as CHAR(11)), '-1') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

