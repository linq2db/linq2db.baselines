﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Cast(Concat(Cast(Extract(hour from `t`.`DateTimeValue`) as CHAR(11)), ':01:01') as Time)
FROM
	`LinqDataTypes` `t`

