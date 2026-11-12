-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @arr Binary(4)
SET     @arr = 0x01020304

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BoolValue],
	[BinaryValue]
)
VALUES
(
	1001,
	True,
	@arr
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

