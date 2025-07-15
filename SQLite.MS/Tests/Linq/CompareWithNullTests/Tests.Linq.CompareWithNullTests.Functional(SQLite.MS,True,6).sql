BeforeExecute
-- SQLite.MS SQLite

/* x => !(x.A == x.B) */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[A] <> [x].[B] OR [x].[A] IS NULL AND [x].[B] IS NOT NULL OR
	[x].[A] IS NOT NULL AND [x].[B] IS NULL
ORDER BY
	[x].[Id]

