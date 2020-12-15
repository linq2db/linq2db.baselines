BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`
		INNER JOIN `LinqDataTypes` `t2` ON `t1`.`ID` = `t2`.`ID`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @param4 UByte -- Boolean
SET     @param4 = 0

SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`
		INNER JOIN `LinqDataTypes` `t2` ON `t1`.`ID` = `t2`.`ID`
WHERE
	`t1`.`BoolValue` = @param4

