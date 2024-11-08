﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`DateTimeValue2`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`SmallIntValue`,
	`t1`.`IntValue`,
	`t1`.`BigIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = '2009-09-24 09:19:29.090'

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `x`
WHERE
	(`x`.`DateTimeValue2` IN (@DateTimeValue2) OR `x`.`DateTimeValue2` IS NULL)

