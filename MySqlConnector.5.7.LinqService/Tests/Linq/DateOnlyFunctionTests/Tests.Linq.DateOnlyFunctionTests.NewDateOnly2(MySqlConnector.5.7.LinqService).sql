﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	STR_TO_DATE(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(4)), '-10-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `p`

