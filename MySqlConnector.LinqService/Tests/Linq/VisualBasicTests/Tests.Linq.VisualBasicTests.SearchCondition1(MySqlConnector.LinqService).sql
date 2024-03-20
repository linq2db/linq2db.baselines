BeforeExecute
-- MySqlConnector MySql

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
	`t`.`BoolValue` = 0 AND (Cast(`t`.`SmallIntValue` as SIGNED) = 5 OR Cast(`t`.`SmallIntValue` as SIGNED) = 7 OR (Cast(`t`.`SmallIntValue` as SIGNED) | 2) = 10)

