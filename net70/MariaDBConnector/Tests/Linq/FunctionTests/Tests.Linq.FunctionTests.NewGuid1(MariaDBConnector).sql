﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`GuidValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`GuidValue` <> Uuid()

