-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[BinaryValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

