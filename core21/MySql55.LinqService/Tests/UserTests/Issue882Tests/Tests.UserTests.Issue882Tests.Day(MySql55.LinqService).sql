﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Extract(day from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

