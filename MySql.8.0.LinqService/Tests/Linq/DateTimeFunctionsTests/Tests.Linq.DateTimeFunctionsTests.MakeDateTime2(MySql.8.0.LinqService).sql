BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Extract(year from STR_TO_DATE(Concat('2010-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f')) as `Year_1`,
			STR_TO_DATE(Concat('2010-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f') as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Year_1` = 2010 AND `t`.`Year_1` IS NOT NULL

