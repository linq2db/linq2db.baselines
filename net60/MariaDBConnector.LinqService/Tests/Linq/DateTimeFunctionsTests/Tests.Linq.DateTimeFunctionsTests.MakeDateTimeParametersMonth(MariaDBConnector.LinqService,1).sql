﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-1-1') as Date)
FROM
	`LinqDataTypes` `t`

