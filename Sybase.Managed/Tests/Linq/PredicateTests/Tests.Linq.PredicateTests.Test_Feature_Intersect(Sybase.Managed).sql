-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Null]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[One] = [r].[Zero] OR [r].[One] IS NULL AND [r].[Zero] IS NULL
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[One] = [r].[Null] OR [r].[One] IS NULL AND [r].[Null] IS NULL
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[Zero] = [r].[Null] OR [r].[Zero] IS NULL AND [r].[Null] IS NULL
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Null]
		WHERE
			EXISTS(
				SELECT
					*
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[One] = [r].[Zero] OR [r].[One] IS NULL AND [r].[Zero] IS NULL
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[One] = [r].[Null] OR [r].[One] IS NULL AND [r].[Null] IS NULL
			)
	)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					*
				WHERE
					[r].[Zero] = [r].[Null] OR [r].[Zero] IS NULL AND [r].[Null] IS NULL
			)
	)

