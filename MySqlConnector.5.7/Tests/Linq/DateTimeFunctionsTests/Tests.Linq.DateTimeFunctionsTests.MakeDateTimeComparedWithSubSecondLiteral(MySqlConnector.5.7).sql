-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') < '2010-01-01 10:00:00.500'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') >= '2010-01-01 10:00:00.500'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') = '2010-01-01 10:00:00.500'

