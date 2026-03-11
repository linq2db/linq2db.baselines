-- SqlServer.Contained SqlServer.2019

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[GuidValue] = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	[e].[GuidNullableValue] = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

