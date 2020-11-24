BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue UniVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
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
-- Sybase.Managed Sybase
DECLARE @value2 Decimal(5, 0)
SET     @value2 = 13621
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	[LinqDataTypes]
SET
	[t1].[SmallIntValue] = Convert(SmallInt, [t1].[MoneyValue] / (@value2 / Convert(Decimal(29, 10), [t1].[IntValue])))
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT TOP 1
	[_].[SmallIntValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 100500

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @id

