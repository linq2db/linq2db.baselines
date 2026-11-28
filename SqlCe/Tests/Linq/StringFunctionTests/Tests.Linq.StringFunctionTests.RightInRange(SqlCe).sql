-- SqlCe
SELECT
	[r].[Id],
	Substring([r].[S], (LEN([r].[S] + '.') - 1) - [r].[N] + 1, [r].[N])
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

-- SqlCe
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	Substring([r].[S], (LEN([r].[S] + '.') - 1) - [r].[N] + 1, [r].[N]) = 'ohn'

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

