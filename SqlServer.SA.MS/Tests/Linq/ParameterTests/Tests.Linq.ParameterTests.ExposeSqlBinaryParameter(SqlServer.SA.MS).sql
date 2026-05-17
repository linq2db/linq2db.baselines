-- SqlServer.SA.MS SqlServer.2019
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

