﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval 5 Minute))
FROM
	`LinqDataTypes` `t`

