-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @param2 UByte -- Boolean
SET     @param2 = 0

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
	`t`.`BoolValue` = @param2

