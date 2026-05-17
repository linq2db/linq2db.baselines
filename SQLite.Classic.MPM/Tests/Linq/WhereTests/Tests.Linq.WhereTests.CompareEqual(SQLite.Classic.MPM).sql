-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[Nullable] = [p].[OtherNullable] OR [p].[Nullable] IS NULL AND [p].[OtherNullable] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[NotNullable],
	[p].[Nullable],
	[p].[OtherNullable]
FROM
	[WhereCompareData] [p]
WHERE
	[p].[OtherNullable] = [p].[Nullable] OR [p].[OtherNullable] IS NULL AND [p].[Nullable] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NotNullable],
	[t1].[Nullable],
	[t1].[OtherNullable]
FROM
	[WhereCompareData] [t1]

