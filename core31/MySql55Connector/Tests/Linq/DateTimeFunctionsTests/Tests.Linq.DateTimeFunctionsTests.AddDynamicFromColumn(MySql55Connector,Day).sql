﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Day)
FROM
	`LinqDataTypes` `t`

