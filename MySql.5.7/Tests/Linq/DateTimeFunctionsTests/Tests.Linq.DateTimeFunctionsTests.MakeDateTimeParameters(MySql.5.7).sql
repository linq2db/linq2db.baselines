BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @year Int32
SET     @year = 2010

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Extract(year from STR_TO_DATE(Concat(CAST(@year AS CHAR(4)), '-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')) as `Year_1`,
			STR_TO_DATE(Concat(CAST(@year AS CHAR(4)), '-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f') as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Year_1` = 2010 AND `t`.`Year_1` IS NOT NULL

