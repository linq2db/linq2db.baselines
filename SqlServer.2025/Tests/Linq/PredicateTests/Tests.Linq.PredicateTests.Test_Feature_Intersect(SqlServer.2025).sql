-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Zero]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Null] as [Null_1]
		INTERSECT
		SELECT
			[r].[Null] as [Null_1]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Zero] as [One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Null] as [One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Null] as [Zero]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Zero]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Null] as [Null_1]
		INTERSECT
		SELECT
			[r].[Null] as [Null_1]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Zero] as [One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Null] as [One]
	)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Null] as [Zero]
	)

