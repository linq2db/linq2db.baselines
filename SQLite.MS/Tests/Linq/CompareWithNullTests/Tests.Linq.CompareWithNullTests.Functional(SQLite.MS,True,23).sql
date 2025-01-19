BeforeExecute
-- SQLite.MS SQLite

/* x => !((int?)x.EnumA < (int?)x.EnumB) */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[EnumA] >= [x].[EnumB] OR [x].[EnumA] IS NULL OR
	[x].[EnumB] IS NULL
ORDER BY
	[x].[Id]

