-- SqlServer.2005.MS SqlServer.2005
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x000102

SELECT
	[t].[decimalDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[varcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[binaryDataType] = @p

