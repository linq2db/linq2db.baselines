-- SqlServer.2017.MS SqlServer.2017
DECLARE @p VarChar(20) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varcharDataType] = @p

