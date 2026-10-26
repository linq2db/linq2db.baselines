-- SQLite.MS SQLite
SELECT
	[r].[Id],
	SUBSTRING([r].[S], LENGTH([r].[S]) - [r].[N] + 1)
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

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	SUBSTRING([r].[S], LENGTH([r].[S]) - [r].[N] + 1) = 'ohn'

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

