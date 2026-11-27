-- Access.Jet.Odbc AccessODBC
SELECT
	Fix([t].[D] / 2)
FROM
	[DoubleStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t].[Id]
FROM
	[DoubleStoredIntegerTable] [t]
WHERE
	Fix([t].[D] / 2) = -3
ORDER BY
	[t].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

