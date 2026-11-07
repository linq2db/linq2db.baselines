-- SqlServer.Contained.MS SqlServer.2025
DECLARE @p VarBinary -- Binary
SET     @p = Tests.Linq.ParameterTests+VarBinary

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varbinaryDataType] = @p

