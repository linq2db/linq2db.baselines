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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	DataLength([t].[BinaryValue])
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

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

