-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(20) -- String
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[NVarcharDataType] = @p

