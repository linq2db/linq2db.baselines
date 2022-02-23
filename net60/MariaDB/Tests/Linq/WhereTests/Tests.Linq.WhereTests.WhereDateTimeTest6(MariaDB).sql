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
DECLARE @Date_1 DateTime
SET     @Date_1 = '2009-09-20'

SELECT
	`_`.`ID`,
	`_`.`MoneyValue`,
	`_`.`DateTimeValue`,
	`_`.`DateTimeValue2`,
	`_`.`BoolValue`,
	`_`.`GuidValue`,
	`_`.`SmallIntValue`,
	`_`.`IntValue`,
	`_`.`BigIntValue`,
	`_`.`StringValue`
FROM
	`LinqDataTypes` `_`
WHERE
	Cast(`_`.`DateTimeValue` as Date) = @Date_1

