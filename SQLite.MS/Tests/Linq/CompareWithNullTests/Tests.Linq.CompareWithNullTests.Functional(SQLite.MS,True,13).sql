BeforeExecute
-- SQLite.MS SQLite

/* x => (int?)x.EnumA != (int?)x.EnumB */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[EnumA] <> [x].[EnumB] OR [x].[EnumA] IS NULL AND [x].[EnumB] IS NOT NULL OR
	[x].[EnumA] IS NOT NULL AND [x].[EnumB] IS NULL
ORDER BY
	[x].[Id]

