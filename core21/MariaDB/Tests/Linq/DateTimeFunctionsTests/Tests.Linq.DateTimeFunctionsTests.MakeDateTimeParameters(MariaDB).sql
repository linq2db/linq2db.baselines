BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 VarChar(5) -- String
SET     @p1 = '2010-'

SELECT 
	`t`.`c1`
FROM
	( 
		SELECT 
			Cast(Concat(@p1, Cast(`p`.`ID` as CHAR(11)), '-', '1') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

