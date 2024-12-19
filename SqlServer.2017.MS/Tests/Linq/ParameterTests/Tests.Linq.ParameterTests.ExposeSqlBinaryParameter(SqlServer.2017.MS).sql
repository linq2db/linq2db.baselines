BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x000102

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[BinaryDataType] = @p

