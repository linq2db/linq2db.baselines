﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 Double
SET     @p_1 = -35

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Second)
FROM
	`LinqDataTypes` `t`

