-- SqlServer.2022.MS SqlServer.2022
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abcdeabcdeabcdeabcde1'

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varcharDataType] = @p

