﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

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
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`MoneyValue` = @MoneyValue,
	`t1`.`DateTimeValue` = @DateTimeValue,
	`t1`.`DateTimeValue2` = @DateTimeValue2,
	`t1`.`BoolValue` = @BoolValue,
	`t1`.`GuidValue` = @GuidValue,
	`t1`.`SmallIntValue` = @SmallIntValue,
	`t1`.`IntValue` = @IntValue,
	`t1`.`BigIntValue` = @BigIntValue,
	`t1`.`StringValue` = @StringValue
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

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
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`MoneyValue` = @MoneyValue,
	`t1`.`DateTimeValue` = @DateTimeValue,
	`t1`.`DateTimeValue2` = @DateTimeValue2,
	`t1`.`BoolValue` = @BoolValue,
	`t1`.`GuidValue` = @GuidValue,
	`t1`.`SmallIntValue` = @SmallIntValue,
	`t1`.`IntValue` = @IntValue,
	`t1`.`BigIntValue` = @BigIntValue,
	`t1`.`StringValue` = @StringValue
WHERE
	`t1`.`ID` = @ID

