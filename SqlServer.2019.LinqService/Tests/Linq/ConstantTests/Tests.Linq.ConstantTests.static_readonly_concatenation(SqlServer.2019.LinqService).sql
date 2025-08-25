BeforeExecute
-- SqlServer.2019 (asynchronously)
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

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

