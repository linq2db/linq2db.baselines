﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Extract(month from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

