-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0102030405
DECLARE @ints  -- Int32
SET     @ints = 1

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @ints

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0504030201
DECLARE @ints  -- Int32
SET     @ints = 2

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @ints

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] IN (1, 2)

