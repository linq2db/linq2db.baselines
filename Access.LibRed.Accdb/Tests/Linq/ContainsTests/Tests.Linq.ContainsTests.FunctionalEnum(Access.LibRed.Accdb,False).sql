-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', NULL)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, 'TWO')

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN ('THREE', 'TWO')

