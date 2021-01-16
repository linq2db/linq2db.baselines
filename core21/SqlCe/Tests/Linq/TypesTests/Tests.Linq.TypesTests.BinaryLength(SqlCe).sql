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

BeforeExecute
-- SqlCe
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

