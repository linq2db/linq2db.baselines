﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	VERSION()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`DateTimeValue2`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`SmallIntValue`,
	`t`.`IntValue`,
	`t`.`BigIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`DateTimeValue` IN (@DateTimeValue)

