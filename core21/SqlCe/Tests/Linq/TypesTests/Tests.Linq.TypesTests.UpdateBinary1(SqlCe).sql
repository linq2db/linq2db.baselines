BeforeExecute
-- SqlCe
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

