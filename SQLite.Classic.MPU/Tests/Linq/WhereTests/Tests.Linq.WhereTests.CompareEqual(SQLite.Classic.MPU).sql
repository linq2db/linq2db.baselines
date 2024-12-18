BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WhereCompareData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WhereCompareData]
(
	[Id]            INTEGER NOT NULL,
	[NotNullable]   INTEGER NOT NULL,
	[Nullable]      INTEGER     NULL,
	[OtherNullable] INTEGER     NULL,

	CONSTRAINT [PK_WhereCompareData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [WhereCompareData]
(
	[Id],
	[NotNullable],
	[Nullable],
	[OtherNullable]
)
VALUES
(1,1,NULL,10),
(2,1,10,10),
(3,1,10,NULL),
(4,1,NULL,NULL),
(5,1,NULL,20),
(6,1,10,20),
(7,1,10,NULL),
(8,1,NULL,NULL),
(9,1,NULL,20),
(10,1,30,20),
(11,1,30,NULL),
(12,1,NULL,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] = [p].[OtherNullable] AND [p].[Nullable] IS NOT NULL AND [p].[OtherNullable] IS NOT NULL OR
	[p].[Nullable] IS NULL AND [p].[OtherNullable] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] <> [p].[OtherNullable] OR [p].[Nullable] IS NULL AND [p].[OtherNullable] IS NOT NULL OR
	[p].[Nullable] IS NOT NULL AND [p].[OtherNullable] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] = [p].[Nullable] AND [p].[OtherNullable] IS NOT NULL AND [p].[Nullable] IS NOT NULL OR
	[p].[OtherNullable] IS NULL AND [p].[Nullable] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] <> [p].[Nullable] OR [p].[OtherNullable] IS NULL AND [p].[Nullable] IS NOT NULL OR
	[p].[OtherNullable] IS NOT NULL AND [p].[Nullable] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WhereCompareData]

