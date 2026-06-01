-- Access.Jet.Odbc AccessODBC

SELECT TOP 3
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]
ORDER BY
	IIF([t1].[Value] IS NULL, 0, 1),
	[t1].[Value],
	[t1].[Id]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

