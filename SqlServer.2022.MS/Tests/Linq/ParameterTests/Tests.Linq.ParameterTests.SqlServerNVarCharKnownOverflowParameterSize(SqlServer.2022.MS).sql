-- SqlServer.2022.MS SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'abcdeabcdeabcdeabcde1'

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[nvarcharDataType] = @p

