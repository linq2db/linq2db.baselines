﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p_1 Int32
SET     @p_1 = -8

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Minute)
FROM
	`LinqDataTypes` `t`

