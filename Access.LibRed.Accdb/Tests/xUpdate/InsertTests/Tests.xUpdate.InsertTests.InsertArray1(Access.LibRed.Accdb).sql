-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
	NULL
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

