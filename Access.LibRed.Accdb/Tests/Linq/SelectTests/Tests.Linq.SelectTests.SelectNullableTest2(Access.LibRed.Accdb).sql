-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar -- String
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1000

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1000

