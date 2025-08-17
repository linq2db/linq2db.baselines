BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	STR_TO_DATE(Concat('2010-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from STR_TO_DATE(Concat('2010-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f')) = 2010

