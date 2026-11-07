-- SqlServer.2022.MS SqlServer.2022
DECLARE @p VarChar -- AnsiString
SET     @p = Tests.Linq.ParameterTests+VarChar

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varcharDataType] = @p

