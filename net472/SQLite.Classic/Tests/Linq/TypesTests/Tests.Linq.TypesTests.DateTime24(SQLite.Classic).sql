BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @MoneyValue Decimal(3,2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.1'
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = '2010-12-14 05:00:07.425'
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

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @pdt  -- DateTime
SET     @pdt = NULL

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue2] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

