-- Sybase.Managed Sybase
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

-- Sybase.Managed Sybase

SELECT TOP 1
	DataLength([t].[BinaryValue])
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

-- Sybase.Managed Sybase
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL

UPDATE
	[LinqDataTypes]
SET
	[BinaryValue] = @BinaryValue
WHERE
	[LinqDataTypes].[ID] = 1

