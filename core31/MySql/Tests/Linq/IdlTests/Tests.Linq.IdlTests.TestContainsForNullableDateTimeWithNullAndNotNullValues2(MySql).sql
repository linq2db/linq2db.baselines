BeforeExecute
-- MySql

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
-- MySql
DECLARE @DateTimeValue2 Datetime -- DateTime2
SET     @DateTimeValue2 = '2009-09-24 09:19:29.090'

SELECT
	Count(*)
FROM
	`LinqDataTypes` `x`
WHERE
	(`x`.`DateTimeValue2` IN (@DateTimeValue2) OR `x`.`DateTimeValue2` IS NULL)

