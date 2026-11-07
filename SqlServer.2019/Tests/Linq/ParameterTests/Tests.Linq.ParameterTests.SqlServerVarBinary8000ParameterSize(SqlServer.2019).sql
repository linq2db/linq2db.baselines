-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT
	[t].[decimalDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[varcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varbinaryDataType] = @p

