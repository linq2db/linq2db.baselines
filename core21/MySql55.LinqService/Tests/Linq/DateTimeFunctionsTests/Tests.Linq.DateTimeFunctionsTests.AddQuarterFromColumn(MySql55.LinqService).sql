﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Quarter)
FROM
	`LinqDataTypes` `t`

