BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue UniVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue UniVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

