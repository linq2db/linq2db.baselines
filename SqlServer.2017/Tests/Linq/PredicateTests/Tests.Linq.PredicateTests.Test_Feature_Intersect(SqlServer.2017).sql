-- SqlServer.2017

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

-- SqlServer.2017

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

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Null]
		INTERSECT
		SELECT
			[r].[Null]
	)

-- SqlServer.2017

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
			[r].[Zero]
	)

-- SqlServer.2017

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
			[r].[Null]
	)

-- SqlServer.2017

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
			[r].[Null]
	)

-- SqlServer.2017

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

-- SqlServer.2017

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

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Null]
		INTERSECT
		SELECT
			[r].[Null]
	)

-- SqlServer.2017

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
			[r].[Zero]
	)

-- SqlServer.2017

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
			[r].[Null]
	)

-- SqlServer.2017

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
			[r].[Null]
	)

