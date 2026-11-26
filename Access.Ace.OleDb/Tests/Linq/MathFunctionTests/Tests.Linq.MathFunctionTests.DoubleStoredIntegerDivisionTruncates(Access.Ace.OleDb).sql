-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix([t].[D] / 2)
FROM
	[DoubleStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t].[Id]
FROM
	[DoubleStoredIntegerTable] [t]
WHERE
	Fix([t].[D] / 2) = -3
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

