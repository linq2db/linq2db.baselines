BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = ?
WHERE
	[t].[ID] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

