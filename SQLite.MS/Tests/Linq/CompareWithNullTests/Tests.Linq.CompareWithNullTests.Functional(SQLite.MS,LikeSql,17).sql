-- SQLite.MS SQLite

/* x => (int?)x.EnumA < (int?)x.EnumB */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[EnumA] < [x].[EnumB]
ORDER BY
	[x].[Id]

