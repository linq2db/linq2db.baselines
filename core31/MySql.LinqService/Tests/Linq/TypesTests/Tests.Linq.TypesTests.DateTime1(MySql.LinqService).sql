BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Date_1 DateTime
SET     @Date_1 = '2009-09-20'

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
	Cast(`t`.`DateTimeValue` as Date) > @Date_1

