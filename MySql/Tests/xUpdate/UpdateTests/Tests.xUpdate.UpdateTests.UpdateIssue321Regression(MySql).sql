﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Int32
SET     @IntValue = 60
DECLARE @BigIntValue Int64
SET     @BigIntValue = NULL
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`DateTimeValue2`,
	`BoolValue`,
	`GuidValue`,
	`SmallIntValue`,
	`IntValue`,
	`BigIntValue`,
	`StringValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @value2 Int32
SET     @value2 = 13621
DECLARE @id Int32
SET     @id = 100500

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`SmallIntValue` = Cast(Floor(`t1`.`MoneyValue` / (@value2 / `t1`.`IntValue`)) as SIGNED)
WHERE
	`t1`.`ID` = @id

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 100500
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`SmallIntValue`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` = @id
LIMIT @take

