-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') < '2010-01-01 10:00:00.500'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') >= '2010-01-01 10:00:00.500'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `p`
WHERE
	STR_TO_DATE(CONCAT('2010-01-01 10:00:', LPad(CAST(`p`.`ID` % 1 AS CHAR(2)), 2, '0'), '.000'), '%Y-%m-%d %H:%i:%s.%f') = '2010-01-01 10:00:00.500'

