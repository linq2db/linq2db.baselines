-- Access.Jet.OleDb AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = 1

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

