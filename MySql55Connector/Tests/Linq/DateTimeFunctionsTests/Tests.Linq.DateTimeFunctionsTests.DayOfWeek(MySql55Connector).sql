﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day))
FROM
	`LinqDataTypes` `t`

