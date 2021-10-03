BeforeExecute
-- MySql55 MySql
DECLARE @DateTimeValue Datetime -- DateTime2
SET     @DateTimeValue = '2009-09-27'

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
	`_`.`DateTimeValue` = @DateTimeValue

