﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 Double
SET     @p_1 = 22

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Hour)
FROM
	`LinqDataTypes` `t`

