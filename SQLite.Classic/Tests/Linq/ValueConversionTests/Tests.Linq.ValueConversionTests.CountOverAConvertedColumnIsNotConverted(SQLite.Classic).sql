-- SQLite.Classic SQLite
SELECT
	COUNT([r].[Value]) OVER (ORDER BY [r].[Id])
FROM
	[ScaledValueRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
SELECT
	MAX([t1].[Value])
FROM
	[ScaledValueRow] [t1]

-- SQLite.Classic SQLite
SELECT
	MIN([t1].[Value])
FROM
	[ScaledValueRow] [t1]

