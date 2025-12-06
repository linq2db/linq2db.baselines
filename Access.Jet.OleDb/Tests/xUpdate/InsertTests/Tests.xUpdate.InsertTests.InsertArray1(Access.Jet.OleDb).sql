-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

