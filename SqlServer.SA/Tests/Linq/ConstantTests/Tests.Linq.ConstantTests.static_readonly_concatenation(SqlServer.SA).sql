-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'StrValue1'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] + N'1' = @p

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

