BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

