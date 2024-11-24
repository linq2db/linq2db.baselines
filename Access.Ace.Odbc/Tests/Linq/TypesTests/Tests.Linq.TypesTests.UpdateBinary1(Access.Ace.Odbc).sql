BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = ?
WHERE
	[t].[ID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

