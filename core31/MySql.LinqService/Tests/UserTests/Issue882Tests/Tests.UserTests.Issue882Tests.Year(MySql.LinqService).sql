﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Extract(year from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

