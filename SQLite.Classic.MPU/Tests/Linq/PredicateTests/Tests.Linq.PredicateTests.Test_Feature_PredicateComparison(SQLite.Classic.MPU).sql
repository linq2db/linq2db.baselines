BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FeatureTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FeatureTable]
(
	[Id]       INTEGER NOT NULL,
	[One]      INTEGER     NULL,
	[Zero]     INTEGER     NULL,
	[Null]     INTEGER     NULL,
	[True]     Bit         NULL,
	[False]    Bit         NULL,
	[BoolNull] Bit         NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [FeatureTable]
(
	[Id],
	[One],
	[Zero],
	[Null],
	[True],
	[False],
	[BoolNull]
)
VALUES
(1,1,0,NULL,1,0,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] IS NULL) = ([r].[Zero] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] IS NULL) = ([r].[Null] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] IS NULL) = ([r].[Null] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	1 = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] IS NULL) <> ([r].[Zero] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] IS NULL) <> ([r].[Null] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] IS NULL) <> ([r].[Null] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	1 = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	1 = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FeatureTable]

