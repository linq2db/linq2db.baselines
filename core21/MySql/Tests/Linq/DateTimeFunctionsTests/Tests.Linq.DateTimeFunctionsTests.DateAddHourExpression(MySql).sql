﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Hour)
FROM
	`LinqDataTypes` `t`

