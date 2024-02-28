BeforeExecute
-- MySql MySql.Official MySql
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2009-01-01'

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
	`_`.`DateTimeValue` > @DateTimeValue

