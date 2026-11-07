-- SQLite.MS SQLite
SELECT
	[r].[Id],
	SUBSTRING([r].[S], MAX(LENGTH([r].[S]) - [r].[N] + 1, 1))
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

