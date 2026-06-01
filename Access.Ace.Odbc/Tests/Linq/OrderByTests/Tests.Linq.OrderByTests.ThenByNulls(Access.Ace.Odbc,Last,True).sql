-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]
ORDER BY
	[t1].[Grp],
	IIF([t1].[Value] IS NULL, 1, 0),
	[t1].[Value] DESC,
	[t1].[Id]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

