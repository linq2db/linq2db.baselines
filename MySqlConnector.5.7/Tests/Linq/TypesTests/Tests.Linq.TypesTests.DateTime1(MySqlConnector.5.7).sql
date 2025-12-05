-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Date Datetime -- DateTime
SET     @Date = '2009-09-20'

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
	Date(`t`.`DateTimeValue`) > @Date

