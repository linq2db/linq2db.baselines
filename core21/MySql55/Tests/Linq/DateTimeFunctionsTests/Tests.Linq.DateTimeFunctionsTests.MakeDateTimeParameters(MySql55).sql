BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 VarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(@p_1, CASE
				WHEN `p`.`ID` IS NULL THEN ''
				ELSE Cast(`p`.`ID` as CHAR(11))
			END, '-1') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

