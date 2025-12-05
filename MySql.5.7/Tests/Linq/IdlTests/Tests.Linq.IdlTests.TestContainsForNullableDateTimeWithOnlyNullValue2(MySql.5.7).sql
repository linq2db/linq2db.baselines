-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`DateTimeValue2` IS NULL

