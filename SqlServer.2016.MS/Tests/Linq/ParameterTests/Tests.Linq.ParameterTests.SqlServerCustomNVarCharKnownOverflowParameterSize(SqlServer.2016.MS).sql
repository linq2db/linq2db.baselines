BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p NVarChar -- String
SET     @p = Tests.Linq.ParameterTests+NVarChar

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[NVarcharDataType] = @p

