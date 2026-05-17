-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

