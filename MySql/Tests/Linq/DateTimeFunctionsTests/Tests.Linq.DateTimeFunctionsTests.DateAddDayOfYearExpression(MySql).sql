﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 3

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

