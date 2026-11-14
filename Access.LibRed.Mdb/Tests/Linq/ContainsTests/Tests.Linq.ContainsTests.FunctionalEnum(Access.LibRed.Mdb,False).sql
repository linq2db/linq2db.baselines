-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, 'TWO')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN ('THREE', 'TWO')

