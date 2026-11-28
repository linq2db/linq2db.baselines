-- SqlServer.2008
SELECT
	[r].[Id],
	RIGHT([r].[S], [r].[N])
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

-- SqlServer.2008
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	RIGHT([r].[S], [r].[N]) = N'ohn'

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

