﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01 00:20:00') AS DATETIME)
FROM
	`LinqDataTypes` `t`

