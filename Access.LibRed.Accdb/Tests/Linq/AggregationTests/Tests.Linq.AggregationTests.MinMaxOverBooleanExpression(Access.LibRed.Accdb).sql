-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MAX(IIF(IIF([t1].[Id] = 2, True, [t1].[Id] > 1), 1, 0))
FROM
	[Item] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MIN(IIF(IIF([t1].[Id] = 2, True, [t1].[Id] > 1), 1, 0))
FROM
	[Item] [t1]

