﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Extract(month from `t`.`DateTimeValue`)
FROM
	`LinqDataTypes` `t`

