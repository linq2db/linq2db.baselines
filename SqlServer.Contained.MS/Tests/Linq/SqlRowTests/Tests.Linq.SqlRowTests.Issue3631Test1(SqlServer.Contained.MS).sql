-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = N'US' AND [x].[State] = N'CA' OR [x].[Country] = N'US' AND [x].[State] = N'NY'

