-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)

