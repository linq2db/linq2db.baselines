﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @Value Second))
FROM
	`LinqDataTypes` `t`

