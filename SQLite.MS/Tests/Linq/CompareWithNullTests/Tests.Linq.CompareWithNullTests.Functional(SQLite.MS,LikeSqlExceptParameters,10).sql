-- SQLite.MS SQLite

/* x => !(x.A <= x.B) */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[A] > [x].[B]
ORDER BY
	[x].[Id]

