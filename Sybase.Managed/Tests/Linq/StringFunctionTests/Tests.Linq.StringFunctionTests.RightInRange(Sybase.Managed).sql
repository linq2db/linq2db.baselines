-- Sybase.Managed Sybase
SELECT
	[r].[Id],
	RIGHT([r].[S], [r].[N])
FROM
	[RightValues] [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

-- Sybase.Managed Sybase
SELECT
	[r].[Id],
	[r].[S],
	[r].[N]
FROM
	[RightValues] [r]
WHERE
	RIGHT([r].[S], [r].[N]) = 'ohn'

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[S],
	[t1].[N]
FROM
	[RightValues] [t1]

