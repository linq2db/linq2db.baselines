-- SQLite.MS SQLite

/* x => !((int?)x.CEnumA > (int?)x.CEnumB) */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[CEnumA] <= [x].[CEnumB] OR [x].[CEnumA] IS NULL OR
	[x].[CEnumB] IS NULL
ORDER BY
	[x].[Id]

