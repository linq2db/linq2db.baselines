BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
	@data,
	True
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

