﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`LinqDataTypes` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @param_1 Int16
SET     @param_1 = 1

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
	@param_1 = `_`.`SmallIntValue`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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

