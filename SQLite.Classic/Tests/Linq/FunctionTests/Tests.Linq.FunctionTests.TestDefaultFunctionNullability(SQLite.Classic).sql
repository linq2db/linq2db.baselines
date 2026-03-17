-- SQLite.Classic SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 0

-- SQLite.Classic SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 1

-- SQLite.Classic SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 0

-- SQLite.Classic SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 1

