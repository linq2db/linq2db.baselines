﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

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
	NOT `t`.`BoolValue` AND `t`.`MoneyValue` > 1 AND (`t`.`SmallIntValue` = 5 OR `t`.`SmallIntValue` = 7 OR `t`.`SmallIntValue` = 8)

