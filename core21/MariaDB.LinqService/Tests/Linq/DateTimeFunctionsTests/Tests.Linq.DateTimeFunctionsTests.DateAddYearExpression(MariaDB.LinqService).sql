﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 11

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Year)
FROM
	`LinqDataTypes` `t`

