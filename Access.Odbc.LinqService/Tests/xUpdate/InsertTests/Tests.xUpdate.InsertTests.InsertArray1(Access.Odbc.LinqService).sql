BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

