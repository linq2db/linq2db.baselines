﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	DayOfYear(`t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

