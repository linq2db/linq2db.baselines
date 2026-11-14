-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 3
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]
ORDER BY
	IIF([t1].[Value] IS NULL, 1, 0),
	[t1].[Value],
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

