﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Month))
FROM
	`LinqDataTypes` `t`

