-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

-- Access.Ace.Odbc AccessODBC
DECLARE @arr VarBinary -- Binary
SET     @arr = NULL

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
	?
)

-- Access.Ace.Odbc AccessODBC

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

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

