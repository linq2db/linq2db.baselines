-- SqlServer.2005.MS SqlServer.2005
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

