BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] > 1000

