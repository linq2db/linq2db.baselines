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
	([s].[Enum] IN ('THREE') OR [s].[Enum] IS NULL)

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
	([s].[Enum] NOT IN ('TWO') AND [s].[Enum] IS NOT NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('THREE', 'TWO') OR [s].[Enum] IS NULL)

