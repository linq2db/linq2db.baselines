﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	NOT CAST(`t`.`MoneyValue` - 4.5 AS SIGNED)

