BeforeExecute
-- SQLite.MS SQLite

/* x => (int?)x.CEnumA == (int?)x.CEnumB */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[CEnumA] = [x].[CEnumB]
ORDER BY
	[x].[Id]

