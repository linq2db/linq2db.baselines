-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 0

-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 1

-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 0

-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 1

