BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarBinaryDataType] = @p

