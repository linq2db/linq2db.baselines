﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(year from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

