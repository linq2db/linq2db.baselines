BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 0 OR COALESCE([r].[Value], 0) IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) <> 1 OR COALESCE([r].[Value], 0) IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id]
FROM
	[DefaultFunctionNullabiityTable] [r]
WHERE
	COALESCE([r].[Value], 0) = 1

