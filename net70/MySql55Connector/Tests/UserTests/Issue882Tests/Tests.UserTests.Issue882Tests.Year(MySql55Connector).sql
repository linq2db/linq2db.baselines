﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Extract(year from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

