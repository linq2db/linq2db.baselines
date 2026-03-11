-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] < 0
ORDER BY
	[x].[Id] DESC
LIMIT 1

