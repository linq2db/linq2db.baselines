BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
DECLARE @param2_1 UByte -- Boolean
SET     @param2_1 = 0

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
	`t1`.`BoolValue` = @param2_1

