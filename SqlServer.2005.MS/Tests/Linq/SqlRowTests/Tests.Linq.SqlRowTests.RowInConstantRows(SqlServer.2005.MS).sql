-- SqlServer.2005.MS SqlServer.2005
SELECT
	[x].[Id],
	[x].[Country],
	[x].[State]
FROM
	[CountryStateTable] [x]
WHERE
	[x].[Country] = N'US' AND [x].[State] = N'CA' OR [x].[Country] = N'US' AND [x].[State] = N'NY'

