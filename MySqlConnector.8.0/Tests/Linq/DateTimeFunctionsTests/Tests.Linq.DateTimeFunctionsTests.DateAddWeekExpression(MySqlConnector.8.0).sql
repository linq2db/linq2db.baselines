﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = -1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Week))
FROM
	`LinqDataTypes` `t`

