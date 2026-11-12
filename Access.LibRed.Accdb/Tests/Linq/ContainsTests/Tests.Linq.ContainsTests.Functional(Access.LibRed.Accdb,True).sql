-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] IN (-1) OR [s].[Int] IS NULL)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)

