-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `x`
WHERE
	(`x`.`DateTimeValue2` IN (STR_TO_DATE('2009-09-24 09:19:29.090', '%Y-%m-%d %H:%i:%s.%f')) OR `x`.`DateTimeValue2` IS NULL)

