BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @year Int32
SET     @year = 2010

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			STR_TO_DATE(Concat(CAST(@year AS CHAR(4)), '-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f') as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

