BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`_`.`ID`,
	`_`.`MoneyValue`,
	`_`.`DateTimeValue`,
	`_`.`BoolValue`,
	`_`.`GuidValue`,
	`_`.`BinaryValue`,
	`_`.`SmallIntValue`,
	`_`.`StringValue`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`DateTimeValue` > STR_TO_DATE('2009-01-01 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')

