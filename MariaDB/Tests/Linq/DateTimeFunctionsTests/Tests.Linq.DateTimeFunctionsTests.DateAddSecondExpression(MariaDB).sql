﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p Int32
SET     @p = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @p Second))
FROM
	`LinqDataTypes` `t`

