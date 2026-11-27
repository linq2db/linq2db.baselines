-- Sybase.Managed Sybase
SELECT
	[x].[Id],
	[x].[Country],
	[x].[State]
FROM
	[CountryStateTable] [x]
WHERE
	[x].[Country] = 'US' AND [x].[State] = 'CA' OR [x].[Country] = 'US' AND [x].[State] = 'NY'

