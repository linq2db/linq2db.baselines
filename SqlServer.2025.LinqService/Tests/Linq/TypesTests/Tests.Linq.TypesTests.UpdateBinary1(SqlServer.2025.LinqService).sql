BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

