﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @year Int32
SET     @year = 2010

SELECT
	STR_TO_DATE(Concat(CAST(@year AS CHAR(4)), '-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from STR_TO_DATE(Concat(CAST(@year AS CHAR(4)), '-', LPad(CAST(`t`.`ID` AS CHAR(2)), 2, '0'), '-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')) = 2010

