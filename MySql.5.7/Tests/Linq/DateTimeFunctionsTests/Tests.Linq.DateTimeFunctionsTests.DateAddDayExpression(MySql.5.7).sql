﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 5

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Day)
FROM
	`LinqDataTypes` `t`

