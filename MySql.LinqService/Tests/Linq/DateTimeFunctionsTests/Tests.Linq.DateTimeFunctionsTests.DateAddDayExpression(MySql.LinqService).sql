﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 5

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

