BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FeatureTable]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) = TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) <> TRUE) = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FeatureTable]

