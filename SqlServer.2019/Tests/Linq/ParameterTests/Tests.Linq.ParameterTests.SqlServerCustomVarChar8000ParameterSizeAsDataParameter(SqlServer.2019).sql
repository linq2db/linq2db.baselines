-- SqlServer.2019
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varcharDataType] = @p

