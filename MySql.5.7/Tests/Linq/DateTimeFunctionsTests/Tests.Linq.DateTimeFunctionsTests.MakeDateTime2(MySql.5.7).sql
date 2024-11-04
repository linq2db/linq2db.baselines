BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			STR_TO_DATE(Concat('2010-', LPad(CAST(`p`.`ID` AS CHAR(2)), 2, '0'), '-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f') as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

