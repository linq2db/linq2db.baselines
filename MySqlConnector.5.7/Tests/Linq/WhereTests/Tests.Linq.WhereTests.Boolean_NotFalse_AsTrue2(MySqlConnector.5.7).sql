﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`MoneyValue`,
	`r`.`DateTimeValue`,
	`r`.`BoolValue`,
	`r`.`GuidValue`,
	`r`.`BinaryValue`,
	`r`.`SmallIntValue`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	NOT `r`.`BoolValue`

