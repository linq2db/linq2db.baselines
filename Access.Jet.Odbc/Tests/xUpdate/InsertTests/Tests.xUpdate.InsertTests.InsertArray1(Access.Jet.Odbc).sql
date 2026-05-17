-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

