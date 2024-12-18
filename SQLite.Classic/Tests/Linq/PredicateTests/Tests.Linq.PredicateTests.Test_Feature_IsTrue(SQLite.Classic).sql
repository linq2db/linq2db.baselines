BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [FeatureTable]

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[One]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] = [r].[Zero]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Null] = [r].[Null]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[Zero]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[Null]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] = [r].[Null]) IS TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[One]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] = [r].[Zero]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Null] = [r].[Null]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[Zero]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[One] = [r].[Null]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	([r].[Zero] = [r].[Null]) IS NOT TRUE

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [FeatureTable]

