BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Date Datetime -- DateTime
SET     @Date = '2009-09-20'

SELECT
	`_1`.`ID`,
	`_1`.`MoneyValue`,
	`_1`.`DateTimeValue`,
	`_1`.`DateTimeValue2`,
	`_1`.`BoolValue`,
	`_1`.`GuidValue`,
	`_1`.`SmallIntValue`,
	`_1`.`IntValue`,
	`_1`.`BigIntValue`,
	`_1`.`StringValue`
FROM
	(
		SELECT
			Cast(`_`.`DateTimeValue` as Date) as `Date_1`,
			`_`.`ID`,
			`_`.`MoneyValue`,
			`_`.`DateTimeValue`,
			`_`.`DateTimeValue2`,
			`_`.`BoolValue`,
			`_`.`GuidValue`,
			`_`.`SmallIntValue`,
			`_`.`IntValue`,
			`_`.`BigIntValue`,
			`_`.`StringValue`
		FROM
			`LinqDataTypes` `_`
	) `_1`
WHERE
	`_1`.`Date_1` = @Date

