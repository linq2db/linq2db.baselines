﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Month))
FROM
	`LinqDataTypes` `t`

