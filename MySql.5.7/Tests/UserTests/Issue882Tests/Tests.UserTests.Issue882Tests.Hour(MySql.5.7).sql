﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Extract(hour from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

