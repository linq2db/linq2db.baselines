BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
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

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

