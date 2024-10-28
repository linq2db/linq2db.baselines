BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

