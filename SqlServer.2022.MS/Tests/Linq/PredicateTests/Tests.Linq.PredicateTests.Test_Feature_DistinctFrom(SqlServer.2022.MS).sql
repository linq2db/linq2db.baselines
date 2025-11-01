-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[One]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS DISTINCT FROM [r].[Zero]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Null] IS DISTINCT FROM [r].[Null]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[Zero]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[Null]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS DISTINCT FROM [r].[Null]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[One]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS NOT DISTINCT FROM [r].[Zero]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Null] IS NOT DISTINCT FROM [r].[Null]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[Zero]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[Null]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS NOT DISTINCT FROM [r].[Null]

