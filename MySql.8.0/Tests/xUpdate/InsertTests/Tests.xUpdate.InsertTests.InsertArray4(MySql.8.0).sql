﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `t`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` > 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue Datetime -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Blob(4) -- Binary
SET     @BinaryValue = 0x01020304
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 0

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1001
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `t`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` > 1000

