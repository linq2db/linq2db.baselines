BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

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

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

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

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

