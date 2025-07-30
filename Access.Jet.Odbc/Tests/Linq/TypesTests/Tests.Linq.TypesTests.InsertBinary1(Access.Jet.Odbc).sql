BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC
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
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

