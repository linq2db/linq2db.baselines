-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

-- Access.Ace.Odbc AccessODBC
DECLARE @data VarBinary -- Binary
SET     @data = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue],
	[BoolValue]
)
VALUES
(
	1001,
	?,
	True
)

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

