﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Extract(year from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

