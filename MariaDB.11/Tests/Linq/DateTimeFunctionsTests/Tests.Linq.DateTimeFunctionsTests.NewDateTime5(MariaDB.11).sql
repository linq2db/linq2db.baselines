﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(year from `t`.`DateTimeValue`) + 1
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(month from STR_TO_DATE(Concat(CAST(Extract(year from `t`.`DateTimeValue`) + 1 AS CHAR(4)), '-10-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')) = 10

