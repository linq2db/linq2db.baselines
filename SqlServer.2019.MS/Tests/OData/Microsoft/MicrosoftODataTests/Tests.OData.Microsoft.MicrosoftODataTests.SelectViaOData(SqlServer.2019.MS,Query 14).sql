-- SqlServer.2019.MS SqlServer.2019
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'Engineer'
DECLARE @TypedProperty_1 NVarChar(4000) -- String
SET     @TypedProperty_1 = N'QA'

SELECT
	N'Title',
	[it].[Title],
	COUNT(*)
FROM
	[odata_person] [it]
WHERE
	[it].[Title] = @TypedProperty OR [it].[Title] = @TypedProperty_1
GROUP BY
	[it].[Title]

