-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	STR_TO_DATE(Concat('2010-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from STR_TO_DATE(Concat('2010-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')) = 2010

