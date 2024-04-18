﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 3

SELECT
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
WHERE
	`_`.`ID` IN (
		SELECT
			`_1`.`ID`
		FROM
			`LinqDataTypes` `_1`
		WHERE
			`_1`.`ID` = @id
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 4

SELECT
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
WHERE
	`_`.`ID` IN (
		SELECT
			`_1`.`ID`
		FROM
			`LinqDataTypes` `_1`
		WHERE
			`_1`.`ID` = @id
	)

