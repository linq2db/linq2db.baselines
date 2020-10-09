BeforeExecute
-- MySql MySql.Official MySql
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
	(@param_1 IS NULL AND `_`.`SmallIntValue` IS NULL OR @param_1 = `_`.`SmallIntValue`)

BeforeExecute
-- MySql MySql.Official MySql

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
	1 = 0

