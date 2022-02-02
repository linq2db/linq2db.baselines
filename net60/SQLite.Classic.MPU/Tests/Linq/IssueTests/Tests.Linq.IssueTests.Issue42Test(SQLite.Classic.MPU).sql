BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.1'
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'659112effe6ff94dbb6bbb16e413c883' as blob)
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue,
	[DateTimeValue] = @DateTimeValue,
	[DateTimeValue2] = @DateTimeValue2,
	[BoolValue] = @BoolValue,
	[GuidValue] = @GuidValue,
	[SmallIntValue] = @SmallIntValue,
	[IntValue] = @IntValue,
	[BigIntValue] = @BigIntValue,
	[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.1'
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'659112effe6ff94dbb6bbb16e413c883' as blob)
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue,
	[DateTimeValue] = @DateTimeValue,
	[DateTimeValue2] = @DateTimeValue2,
	[BoolValue] = @BoolValue,
	[GuidValue] = @GuidValue,
	[SmallIntValue] = @SmallIntValue,
	[IntValue] = @IntValue,
	[BigIntValue] = @BigIntValue,
	[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

