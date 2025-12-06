-- SqlServer.2014.MS SqlServer.2014
DECLARE @p VarBinary -- Binary
SET     @p = Tests.Linq.ParameterTests+VarBinary

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarBinaryDataType] = @p

