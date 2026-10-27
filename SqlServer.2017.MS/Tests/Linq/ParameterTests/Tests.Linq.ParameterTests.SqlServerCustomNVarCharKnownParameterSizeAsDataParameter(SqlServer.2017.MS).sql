-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(20) -- String
SET     @p = N'abc'

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[nvarcharDataType] = @p

