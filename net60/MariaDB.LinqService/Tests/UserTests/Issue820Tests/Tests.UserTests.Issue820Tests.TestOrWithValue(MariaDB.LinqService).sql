BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`LinqDataTypes` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Value_1 Int16
SET     @Value_1 = 1

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
	@Value_1 = `_`.`SmallIntValue`

BeforeExecute
-- MariaDB MySql.Official MySql

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

