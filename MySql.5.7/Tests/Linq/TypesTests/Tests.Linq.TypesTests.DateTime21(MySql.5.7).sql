-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
	`t`.`ID` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @dt Datetime -- DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`DateTimeValue` = @dt
WHERE
	`t`.`ID` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
	`t`.`ID` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @pdt Datetime -- DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`DateTimeValue` = @pdt
WHERE
	`t`.`ID` = 1

