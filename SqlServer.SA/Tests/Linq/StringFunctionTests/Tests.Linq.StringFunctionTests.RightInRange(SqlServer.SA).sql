-- SqlServer.SA SqlServer.2019
SELECT
	[r].[Id],
	RIGHT([r].[S], [r].[N])
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

-- SqlServer.SA SqlServer.2019
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	RIGHT([r].[S], [r].[N]) = N'ohn'

-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

